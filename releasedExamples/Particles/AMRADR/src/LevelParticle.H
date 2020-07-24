#ifdef CH_LANG_CC
/*
 *      _______              __
 *     / ___/ /  ___  __ _  / /  ___
 *    / /__/ _ \/ _ \/  V \/ _ \/ _ \
 *    \___/_//_/\___/_/_/_/_.__/\___/
 *    Please refer to Copyright.txt, in Chombo's root directory.
 */
#endif

#ifndef _LEVELPARTICLE_H_
#define _LEVELPARTICLE_H_

#include "FArrayBox.H"
#include "FluxBox.H"
#include "DisjointBoxLayout.H"
#include "LevelData.H"
#include "ParticleData.H"
#include "ProblemDomain.H"
#include "PatchParticle.H"

#include "NamespaceHeader.H"

class LevelParticle
{
public:
  /// Default constructor
  LevelParticle();

  /// Destructor
  ~LevelParticle();

  /// Actual constructor.
  void define(const ProblemDomain&       a_domain,
              const Real&                a_dx,
              const PatchParticle* const a_patchParticleFactory);

  /// returns the patchParticle pointer
  PatchParticle* getPatchParticlePtr()
  {
    return  m_patchParticle;
  }

  /// const version
  const PatchParticle* getPatchParticlePtrConst() const
  {
    return (PatchParticle*)m_patchParticle;
  }

protected:
  // define() has been called
  bool m_defined;

  // Particle patch integrator;
  PatchParticle* m_patchParticle;

  // the dimensional size of the domain along each coordinate direction
  RealVect m_domainLength;

  // Grid spacing
  Real m_dx;

  // Problem domain - index space for this level
  ProblemDomain m_domain;

private:
  // Disallowed for all the usual reasons
  void operator=(const LevelParticle& a_input)
  {
    MayDay::Error("invalid operator");
  }

  // Disallowed for all the usual reasons
  LevelParticle(const LevelParticle& a_input)
  {
    MayDay::Error("invalid operator");
  }
};

#include "NamespaceFooter.H"

#include "LevelParticleI.H"

#endif
