#ifdef CH_LANG_CC
/*
 *      _______              __
 *     / ___/ /  ___  __ _  / /  ___
 *    / /__/ _ \/ _ \/  V \/ _ \/ _ \
 *    \___/_//_/\___/_/_/_/_.__/\___/
 *    Please refer to Copyright.txt, in Chombo's root directory.
 */
#endif

#include "PatchParticle.H"

#include <iostream>
#include <cmath>

#include "NamespaceHeader.H"

// Flag everything as not defined or set
PatchParticle::PatchParticle()
{
  m_isDefined        = false;
  m_isParametersSet  = false;
  m_isMeshInterpSet  = false;

  m_meshInterp       = NULL;
}

PatchParticle::~PatchParticle()
{

  if (m_meshInterp != NULL)
    {
      delete m_meshInterp;
      m_meshInterp = NULL;
    }
}

// define with parameters
void PatchParticle::define(const ProblemDomain&     a_domain,
                           const Real&              a_dx,
                           const InterpType&        a_poissonInterpType)
{
  CH_assert(a_dx > 0.0);

  // Store the domain and grid spacing
  m_domain     = a_domain;
  m_dx         = a_dx;
  m_origin     = RealVect(D_DECL(0.0, 0.0, 0.0));

  setParameters(a_poissonInterpType);
  setMeshInterp(a_poissonInterpType);

  m_isDefined = true;
}

/// get particle-mesh object
MeshInterp* PatchParticle::getMeshInterp() const
{
  CH_assert(m_isMeshInterpSet);
  return m_meshInterp;
}

// Set MeshInterp object
void PatchParticle::setMeshInterp(const InterpType& a_poissonInterpType)
{
  CH_assert(m_isParametersSet);
  CH_assert(a_poissonInterpType == m_poissonInterpType);

  if (m_meshInterp != NULL)
    {
      delete m_meshInterp;
    }

  m_meshInterp = static_cast<MeshInterp* > (new MeshInterp(m_domain.domainBox(),
                                                           RealVect(D_DECL(m_dx, m_dx, m_dx)),
                                                           m_origin));

  m_isMeshInterpSet = true;
}

// Factory method - this object is its own factory.  It returns a pointer
// to new PatchGodunov object
PatchParticle* PatchParticle::new_patchParticle() const
{
  CH_assert(m_isParametersSet);

  // Make the new object
  PatchParticle* retval =
    static_cast<PatchParticle*>(new PatchParticle());

  // Define the new object
  retval->define(m_domain, m_dx, m_poissonInterpType);

  // Return the new object
  return retval;
}

void PatchParticle::setParameters(const InterpType& a_poissonInterpType)
{
  m_poissonInterpType = a_poissonInterpType;
  m_isParametersSet = true;
}

// return interpolation scheme used by the patcher
const InterpType& PatchParticle::interpOrder() const
{
  CH_assert(m_isParametersSet);
  return m_poissonInterpType;
}

// Return true if everything is defined and setup
bool PatchParticle::isDefined() const
{
  bool rv = m_isDefined
    && m_isMeshInterpSet
    && m_isParametersSet;

  return rv;
}

#include "NamespaceFooter.H"
