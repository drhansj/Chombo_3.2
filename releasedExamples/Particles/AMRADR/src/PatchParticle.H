#ifdef CH_LANG_CC
/*
 *      _______              __
 *     / ___/ /  ___  __ _  / /  ___
 *    / /__/ _ \/ _ \/  V \/ _ \/ _ \
 *    \___/_//_/\___/_/_/_/_.__/\___/
 *    Please refer to Copyright.txt, in Chombo's root directory.
 */
#endif

#ifndef _PATCHPARTICLE_H_
#define _PATCHPARTICLE_H_

#include "Box.H"
#include "Vector.H"
#include "ListBox.H"
#include "ListBoxFactory.H"
#include "MeshInterp.H"

#include <string>
using std::string;

#include "NamespaceHeader.H"

/**
   The base class PatchParticle provides an implementation of a particle
   method for advancing particle solution on a grid patch. It consists of
   three major parts: a method to project the particles mass on the grid,
   a method to interpolate the grid forces to the particle positions and
   a method to push the particles.

*/

class PatchParticle
{
public:
  /// null Constructor
  PatchParticle();

  /// full constructor
  PatchParticle(const ProblemDomain&     a_domain,
                const Real&              a_dx,
                const InterpType&        a_poissonInterpType)
  {
    define(a_domain, a_dx, a_poissonInterpType);
  }

  /// Destructor
  virtual ~PatchParticle();

  /// same as full constructor
  virtual void define(const ProblemDomain&     a_domain,
                      const Real&              a_dx,
                      const InterpType&        a_poissonInterpType);

  // set parameters
  virtual void setParameters(const InterpType& a_poissonInterpType);

  /// Set the MeshInterp object
  virtual void setMeshInterp(const InterpType& a_poissonInterpType);

  /// get MeshInterp object
  MeshInterp* getMeshInterp() const;

  /// Factory method - this object is its own factory
  virtual PatchParticle* new_patchParticle() const;

  // return interpolation scheme used by the patcher
  virtual const InterpType& interpOrder() const;

  /// Return true if the object is completely defined.
  virtual bool isDefined() const;

  /// Compute the mass distribution given a particle ListBox
  template <class P>
  void deposit(FArrayBox&        a_rho,
               const ListBox<P>& a_PH,
               const Box&        a_box);

  /// Compute the mass distribution given a particle ListBox
  template <class P>
  void depositVelocity(FArrayBox& a_v_field,
                       FArrayBox&        a_rho,
                       const ListBox<P>& a_PH,
                       const Box&        a_box);

  /// Update/correct the particle variables and return the max
  /// particle speed.
  template <class P, class FTypeBox>
  void updateState(ListBox<P>&     a_PH,
                   Real&           a_maxPartSpeed,
                   const FTypeBox& a_field,
                   const Real&     a_dt,
                   const Box&      a_box);

  /// Implement 2nd order corrections
  template <class P, class FTypeBox>
  void correctState(ListBox<P>&     a_PH,
                    const FTypeBox& a_field,
                    const Real&     a_dt,
                    const Box&      a_box);

  /// Compute the maximum wave speed
  template <class P>
  Real getMaxPartSpeed(const ListBox<P>& a_PH,
                       const Box&        a_box);

protected:

  // Has define() been called?
  bool m_isDefined;

  // Problem domain and grid spacing
  ProblemDomain m_domain;
  Real m_dx;
  RealVect m_origin;

  // Interpolation order
  InterpType m_poissonInterpType;

  // was setParameters called?
  bool m_isParametersSet;

  // MeshInterp object: manages particle-grid operations
  MeshInterp* m_meshInterp;
  bool m_isMeshInterpSet;

private:
  // Disallowed for all the usual reasons
  void operator=(const PatchParticle& a_input)
  {
    MayDay::Error("invalid operator");
  }

  // Disallowed for all the usual reasons
  PatchParticle(const PatchParticle& a_input)
  {
    MayDay::Error("invalid operator");
  }
};

#include "NamespaceFooter.H"

#include "PatchParticleI.H"

#endif
