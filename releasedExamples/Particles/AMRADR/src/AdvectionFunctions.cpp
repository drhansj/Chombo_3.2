#ifdef CH_LANG_CC
/*
 *      _______              __
 *     / ___/ /  ___  __ _  / /  ___
 *    / /__/ _ \/ _ \/  V \/ _ \/ _ \
 *    \___/_//_/\___/_/_/_/_.__/\___/
 *    Please refer to Copyright.txt, in Chombo's root directory.
 */
#endif


#include "AdvectionFunctions.H"

#include "NamespaceHeader.H"

#include "math.h"

/// handy example--constant flow
Real constantAdvection(const RealVect& a_point,
                       const int&      a_velComp)
{
  return 1.0;
}


/// handy example--rotating flow
Real rotatingAdvection(const RealVect& a_point,
                       const int&      a_velComp)
{
  RealVect center = RealVect::Unit;
  center *= 0.5;
  Real dist = 0;
  RealVect offset = a_point;
  //offset -= center;
  for (int idir = 0; idir < SpaceDim; idir++)
    {
      dist += offset[idir]*offset[idir];
    }

  Real retval;
  /*
  if (dist < 0.25)
    {
      if (a_velComp == 0)
        {
          retval = 1;
        }
      else if (a_velComp == 1)
        {
          retval = 0;
        }
      else
        {
          retval = 0;
        }
    }
  else
    {
      retval = 0;
    }
  */
  //offset +=center;
  if (a_velComp == 0)
    {
      retval = cos(2*M_PI*offset[0])*sin(2*M_PI*offset[1]);
    }
    else if (a_velComp == 1)
    {
      retval = -sin(2*M_PI*offset[0])*cos(2*M_PI*offset[1]);
    }
  return retval;
}

#include "NamespaceFooter.H"
