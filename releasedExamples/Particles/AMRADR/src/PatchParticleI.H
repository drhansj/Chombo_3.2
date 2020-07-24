#ifdef CH_LANG_CC
/*
 *      _______              __
 *     / ___/ /  ___  __ _  / /  ___
 *    / /__/ _ \/ _ \/  V \/ _ \/ _ \
 *    \___/_//_/\___/_/_/_/_.__/\___/
 *    Please refer to Copyright.txt, in Chombo's root directory.
 */
#endif

#ifndef _PATCHPARTICLEI_H_
#define _PATCHPARTICLEI_H_

#include <iomanip>

#include "NamespaceHeader.H"

// Distribute particle mass onto the grid. If the particles' clouds
// extend outside the current box, an error will be thrown.
template <class P>
void PatchParticle::deposit(FArrayBox&        a_rho,
                            const ListBox<P>& a_listBox,
                            const Box&        a_box)
{
  CH_assert(isDefined());

  CH_assert(m_dx == a_listBox.meshSpacing()[0]);
  CH_assert(a_rho.box().contains(a_box));

  m_meshInterp->deposit(a_listBox.listItems(),
                        a_rho,
                        m_poissonInterpType);
}

template <class P>
void PatchParticle::depositVelocity(FArrayBox&        a_v_field,
                                    FArrayBox&        a_rho,
                                    const ListBox<P>& a_listBox,
                                    const Box&        a_box)
{
  CH_assert(isDefined());

  CH_assert(m_dx == a_listBox.meshSpacing()[0]);
  CH_assert(a_rho.box().contains(a_box));

  m_meshInterp->depositVelocity(a_listBox.listItems(),
                                a_v_field,
                                a_rho,
                                m_poissonInterpType);
}

#include "NamespaceFooter.H"

#endif
