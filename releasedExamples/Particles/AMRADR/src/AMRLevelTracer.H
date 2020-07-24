#ifdef CH_LANG_CC
/*
 *      _______              __
 *     / ___/ /  ___  __ _  / /  ___
 *    / /__/ _ \/ _ \/  V \/ _ \/ _ \
 *    \___/_//_/\___/_/_/_/_.__/\___/
 *    Please refer to Copyright.txt, in Chombo's root directory.
 */
#endif

#ifndef _AMRLEVELTRACER_H_
#define _AMRLEVELTRACER_H_

#include "FArrayBox.H"
#include "LevelData.H"
#include "AMRLevel.H"

#include "ListBox.H"
#include "ListBoxFactory.H"
#include "Particle.H"
#include "MeshInterp.H"
#include "AdvectionFunctions.H"
#include "ParticleData.H"
#include "ParticleValidRegion.H"
#include "LevelParticle.H"
#include "JointParticle.H"

#include "ProblemDomain.H"
#include "IntVectSet.H"
#include "Vector.H"
#include "RealVect.H"
#include "DisjointBoxLayout.H"

#include "NamespaceHeader.H"

/// AMRLevel for tracer particles
/**
 */
class AMRLevelTracer : public AMRLevel
{
public:

  /// Default constructor
  AMRLevelTracer()
  {
    m_patchParticle = NULL;
    m_isDefined = false;
  }

  /// Full constructor. Arguments are same as in define()
  AMRLevelTracer(AdvectionVelocityFunction a_advFunc,
                 const Real& a_cfl,
                 const Real& a_domainLength,
                 const InterpType& a_poissonInterpType,
                 const int& a_maxBoxSize)
  {
    m_isDefined = false;
    m_patchParticle = NULL;
    define(a_advFunc, a_cfl, a_domainLength, a_poissonInterpType, a_maxBoxSize);
  }

  /// Defines this AMRLevelTracer
  void define(AdvectionVelocityFunction a_advFunc,
              const Real& a_cfl,
              const Real& a_domainLength,
              const InterpType& a_poissonInterpType,
              const int& a_maxBoxSize);

  /// Destructor
  virtual ~AMRLevelTracer();

  /// Never called: historical
  virtual void define(AMRLevel*  a_coarserLevelPtr,
                      const Box& a_problemDomain,
                      int        a_level,
                      int        a_refRatio)
  {
    MayDay::Error("never called--historical");
  }

  /// Define new AMRLevelTracer from coarser
  virtual void define(AMRLevel*            a_coarserLevelPtr,
                      const ProblemDomain& a_problemDomain,
                      int                  a_level,
                      int                  a_refRatio);

  /// Advance by one timestep
  virtual Real advance();

  /// Sort JointParticles into bins based on the mesh spacing.
  template <class P>
  void binmapParticles(std::map<IntVect,JointParticle,CompIntVect>& a_mip,
                      const List<P>&                               a_part,
                      const RealVect&                              a_meshSpacing,
                      const RealVect&                              a_origin)
  {
  CH_TIMERS("binmapParticles");

  for (ListIterator<P> li(a_part); li; ++li)
    {
      const P& p = li();
      const IntVect bin = locateBin(p.position(), a_meshSpacing, a_origin);

      map<IntVect,JointParticle,CompIntVect>::iterator it = a_mip.find(bin);

      if (it == a_mip.end())
        {
          a_mip[bin] = JointParticle(p.mass(),p.position(),p.velocity(),1);
        }
      else
        {
          it->second.addParticle( &p );
        }
    }
  }

  /// Set to val defined for an entire BoxLayoutData
  template<class T, class V>
  inline void setToVal(BoxLayoutData<T>& a_lt, const V a_v)
  {
    for (DataIterator di=a_lt.dataIterator();di.ok();++di)
      {
        a_lt[di].setVal(a_v);
      }
  }

  /// Things to do after a timestep
  virtual void postTimeStep();

  /// get MeshInterp object
  MeshInterp* getMeshInterp() const;

  /// Create tags for regridding
  virtual void tagCells(IntVectSet& a_tags) ;

  /// Create tags at initialization
  virtual void tagCellsInit(IntVectSet& a_tags) ;

  /// Set up data on this level before regridding
  virtual void preRegrid(int a_base_level,
                         const Vector<Vector<Box> >& a_newGrids);

  /// Set up data on this level after regridding
  virtual void regrid(const Vector<Box>& a_newGrids);

  /// postRegridding ops
  virtual void postRegrid(int a_baseLevel);

  /// Initialize grids
  virtual void initialGrid(const Vector<Box>& a_newGrids);

  /// Initialize data
  virtual void initialData();

  /// Things to do after initialization
  virtual void postInitialize();



#ifdef CH_USE_HDF5
  /// Write checkpoint header
  virtual void writeCheckpointHeader(HDF5Handle& a_handle) const;

  /// Write checkpoint data for this level
  virtual void writeCheckpointLevel(HDF5Handle& a_handle) const;

  /// Read checkpoint header
  virtual void readCheckpointHeader(HDF5Handle& a_handle);

  /// Read checkpoint data for this level
  virtual void readCheckpointLevel(HDF5Handle& a_handle);

  /// Write plotfile header
  virtual void writePlotHeader(HDF5Handle& a_handle) const;

  /// Write plotfile data for this level
  virtual void writePlotLevel(HDF5Handle& a_handle) const;
#endif

  /// Returns the dt computed earlier for this level
  virtual Real computeDt();

  /// Compute dt using initial data
  virtual Real computeInitialDt();

protected:

  // Setup menagerie of data structures
  void levelSetup();

  /// collect Particles from finer levels into the Joint particle list
  void aggregateParticles(ParticleData<JointParticle>& a_particles);

  // the total number of particles on this level
  int countItems() const;

  /// This generates the RHS for Poisson's equations from the particles
  /// on this level. It also includes a contribution for particles on
  /// coarser levels whose clouds hang over this level's grids.
  void makePoissonRhs(LevelData<FArrayBox>&          a_rhs,
                      const ParticleData<Particle>&  a_P,
                      const ParticleData<JointParticle>& a_jointP);

  void depositMass(LevelData<FArrayBox>&       a_rho,
                   const ParticleData<Particle>&  a_P,
                   const ParticleData<JointParticle>& a_jointP);

  void depositVelocity(LevelData<FArrayBox>&       a_v_field,
                       LevelData<FArrayBox>&       a_rho,
                       const ParticleData<Particle>&  a_P,
                       const ParticleData<JointParticle>& a_jointP);

  // total number of outcast particles
  int countOutcast() const;

  // Get the next coarser level
  AMRLevelTracer* getCoarserLevel() const;

  // Get the next finer level
  AMRLevelTracer* getFinerLevel() const;

  // Particles at the old and new times
  ParticleData<Particle> m_POld, m_PNew;

  // Joint Particles that represent the net effect of the particles
  // that live on finer levels
  ParticleData<JointParticle> m_jointParticle;

  // MeshInterp object: manages particle-grid operations
  MeshInterp* m_meshInterp;
  bool m_isMeshInterpSet;

  bool m_isParametersSet;

  bool                 m_isDefined;
  Real                 m_cfl;
  Real                 m_domainLength;
  InterpType           m_poissonInterpType;
  Real                 m_dx;
  RealVect             m_meshSpacing;
  RealVect             m_origin;
  AdvectionVelocityFunction    m_advFunc;
  Real                 m_maxVelocityLocal;

  Real                 m_dtNew;
  int                  m_numGhost;
  int                  m_maxBoxSize;
  Real                 m_numForceGhost;
  const static int     m_buffer = 2;
  const static int     m_verbosity = 1;

  ParticleValidRegion  m_PVR;

  bool                 m_hasCoarser;
  bool                 m_hasFiner;
  bool                 m_isThisFinestLev;

  DisjointBoxLayout    m_grids;
  LevelData<FArrayBox> m_rho;
  LevelData<FArrayBox> m_v_field;
  LevelData<FArrayBox> m_rhoCrse;

  // Level integrator for particles
  LevelParticle m_levelParticle;

  // Patch Integrator for particles
  PatchParticle* m_patchParticle;
private:

  // Disallowed for all the usual reasons
  void operator=(const AMRLevelTracer&);
  AMRLevelTracer(const AMRLevelTracer&);
};

#include "NamespaceFooter.H"

#endif
