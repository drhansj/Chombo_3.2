#ifndef _FOURTHORDERUTILF_F_H_
#define _FOURTHORDERUTILF_F_H_

#include "FORT_PROTO.H"
#include "CH_Timer.H"
#include "REAL.H"

extern "C"
{

#ifndef GUARDCELLTOFACE4THORDER 
#define GUARDCELLTOFACE4THORDER 
// Prototype for Fortran procedure celltoface4thorder ...
//
void FORTRAN_NAME( CELLTOFACE4THORDER ,celltoface4thorder )(
      CHFp_FRA(faceData)
      ,CHFp_CONST_FRA(cellData)
      ,CHFp_BOX(faceBox)
      ,CHFp_INT(faceDir) );

#define FORT_CELLTOFACE4THORDER FORTRAN_NAME( inlineCELLTOFACE4THORDER, inlineCELLTOFACE4THORDER)
#define FORTNT_CELLTOFACE4THORDER FORTRAN_NAME( CELLTOFACE4THORDER, celltoface4thorder)

inline void FORTRAN_NAME(inlineCELLTOFACE4THORDER, inlineCELLTOFACE4THORDER)(
      CHFp_FRA(faceData)
      ,CHFp_CONST_FRA(cellData)
      ,CHFp_BOX(faceBox)
      ,CHFp_INT(faceDir) )
{
 CH_TIMELEAF("FORT_CELLTOFACE4THORDER");
 FORTRAN_NAME( CELLTOFACE4THORDER ,celltoface4thorder )(
      CHFt_FRA(faceData)
      ,CHFt_CONST_FRA(cellData)
      ,CHFt_BOX(faceBox)
      ,CHFt_INT(faceDir) );
}
#endif  // GUARDCELLTOFACE4THORDER 

#ifndef GUARDCELLTOFACE4THORDERCENTERS 
#define GUARDCELLTOFACE4THORDERCENTERS 
// Prototype for Fortran procedure celltoface4thordercenters ...
//
void FORTRAN_NAME( CELLTOFACE4THORDERCENTERS ,celltoface4thordercenters )(
      CHFp_FRA(faceData)
      ,CHFp_CONST_FRA(cellData)
      ,CHFp_BOX(faceBox)
      ,CHFp_INT(faceDir) );

#define FORT_CELLTOFACE4THORDERCENTERS FORTRAN_NAME( inlineCELLTOFACE4THORDERCENTERS, inlineCELLTOFACE4THORDERCENTERS)
#define FORTNT_CELLTOFACE4THORDERCENTERS FORTRAN_NAME( CELLTOFACE4THORDERCENTERS, celltoface4thordercenters)

inline void FORTRAN_NAME(inlineCELLTOFACE4THORDERCENTERS, inlineCELLTOFACE4THORDERCENTERS)(
      CHFp_FRA(faceData)
      ,CHFp_CONST_FRA(cellData)
      ,CHFp_BOX(faceBox)
      ,CHFp_INT(faceDir) )
{
 CH_TIMELEAF("FORT_CELLTOFACE4THORDERCENTERS");
 FORTRAN_NAME( CELLTOFACE4THORDERCENTERS ,celltoface4thordercenters )(
      CHFt_FRA(faceData)
      ,CHFt_CONST_FRA(cellData)
      ,CHFt_BOX(faceBox)
      ,CHFt_INT(faceDir) );
}
#endif  // GUARDCELLTOFACE4THORDERCENTERS 

#ifndef GUARDINCREMENTLAPLACIAN 
#define GUARDINCREMENTLAPLACIAN 
// Prototype for Fortran procedure INCREMENTLAPLACIAN ...
//
void FORTRAN_NAME( INCREMENTLAPLACIAN ,incrementlaplacian )(
      CHFp_FRA(lapPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gridBox)
      ,CHFp_CONST_INT(dir)
      ,CHFp_CONST_REAL(factor) );

#define FORT_INCREMENTLAPLACIAN FORTRAN_NAME( inlineINCREMENTLAPLACIAN, inlineINCREMENTLAPLACIAN)
#define FORTNT_INCREMENTLAPLACIAN FORTRAN_NAME( INCREMENTLAPLACIAN, incrementlaplacian)

inline void FORTRAN_NAME(inlineINCREMENTLAPLACIAN, inlineINCREMENTLAPLACIAN)(
      CHFp_FRA(lapPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gridBox)
      ,CHFp_CONST_INT(dir)
      ,CHFp_CONST_REAL(factor) )
{
 CH_TIMELEAF("FORT_INCREMENTLAPLACIAN");
 FORTRAN_NAME( INCREMENTLAPLACIAN ,incrementlaplacian )(
      CHFt_FRA(lapPhi)
      ,CHFt_CONST_FRA(phi)
      ,CHFt_BOX(gridBox)
      ,CHFt_CONST_INT(dir)
      ,CHFt_CONST_REAL(factor) );
}
#endif  // GUARDINCREMENTLAPLACIAN 

#ifndef GUARDINCREMENTLOSIDELAPLACIAN 
#define GUARDINCREMENTLOSIDELAPLACIAN 
// Prototype for Fortran procedure INCREMENTLOSIDELAPLACIAN ...
//
void FORTRAN_NAME( INCREMENTLOSIDELAPLACIAN ,incrementlosidelaplacian )(
      CHFp_FRA(lapPhi)
      ,CHFp_FRA(phi)
      ,CHFp_BOX(gridBox)
      ,CHFp_INT(dir)
      ,CHFp_REAL(factor) );

#define FORT_INCREMENTLOSIDELAPLACIAN FORTRAN_NAME( inlineINCREMENTLOSIDELAPLACIAN, inlineINCREMENTLOSIDELAPLACIAN)
#define FORTNT_INCREMENTLOSIDELAPLACIAN FORTRAN_NAME( INCREMENTLOSIDELAPLACIAN, incrementlosidelaplacian)

inline void FORTRAN_NAME(inlineINCREMENTLOSIDELAPLACIAN, inlineINCREMENTLOSIDELAPLACIAN)(
      CHFp_FRA(lapPhi)
      ,CHFp_FRA(phi)
      ,CHFp_BOX(gridBox)
      ,CHFp_INT(dir)
      ,CHFp_REAL(factor) )
{
 CH_TIMELEAF("FORT_INCREMENTLOSIDELAPLACIAN");
 FORTRAN_NAME( INCREMENTLOSIDELAPLACIAN ,incrementlosidelaplacian )(
      CHFt_FRA(lapPhi)
      ,CHFt_FRA(phi)
      ,CHFt_BOX(gridBox)
      ,CHFt_INT(dir)
      ,CHFt_REAL(factor) );
}
#endif  // GUARDINCREMENTLOSIDELAPLACIAN 

#ifndef GUARDINCREMENTHISIDELAPLACIAN 
#define GUARDINCREMENTHISIDELAPLACIAN 
// Prototype for Fortran procedure INCREMENTHISIDELAPLACIAN ...
//
void FORTRAN_NAME( INCREMENTHISIDELAPLACIAN ,incrementhisidelaplacian )(
      CHFp_FRA(lapPhi)
      ,CHFp_FRA(phi)
      ,CHFp_BOX(gridBox)
      ,CHFp_INT(dir)
      ,CHFp_REAL(factor) );

#define FORT_INCREMENTHISIDELAPLACIAN FORTRAN_NAME( inlineINCREMENTHISIDELAPLACIAN, inlineINCREMENTHISIDELAPLACIAN)
#define FORTNT_INCREMENTHISIDELAPLACIAN FORTRAN_NAME( INCREMENTHISIDELAPLACIAN, incrementhisidelaplacian)

inline void FORTRAN_NAME(inlineINCREMENTHISIDELAPLACIAN, inlineINCREMENTHISIDELAPLACIAN)(
      CHFp_FRA(lapPhi)
      ,CHFp_FRA(phi)
      ,CHFp_BOX(gridBox)
      ,CHFp_INT(dir)
      ,CHFp_REAL(factor) )
{
 CH_TIMELEAF("FORT_INCREMENTHISIDELAPLACIAN");
 FORTRAN_NAME( INCREMENTHISIDELAPLACIAN ,incrementhisidelaplacian )(
      CHFt_FRA(lapPhi)
      ,CHFt_FRA(phi)
      ,CHFt_BOX(gridBox)
      ,CHFt_INT(dir)
      ,CHFt_REAL(factor) );
}
#endif  // GUARDINCREMENTHISIDELAPLACIAN 

#ifndef GUARDUDIVLOSIDEGRAD 
#define GUARDUDIVLOSIDEGRAD 
// Prototype for Fortran procedure UDivLoSideGrad ...
//
void FORTRAN_NAME( UDIVLOSIDEGRAD ,udivlosidegrad )(
      CHFp_FRA(gradPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gradBox)
      ,CHFp_CONST_INT(dir) );

#define FORT_UDIVLOSIDEGRAD FORTRAN_NAME( inlineUDIVLOSIDEGRAD, inlineUDIVLOSIDEGRAD)
#define FORTNT_UDIVLOSIDEGRAD FORTRAN_NAME( UDIVLOSIDEGRAD, udivlosidegrad)

inline void FORTRAN_NAME(inlineUDIVLOSIDEGRAD, inlineUDIVLOSIDEGRAD)(
      CHFp_FRA(gradPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gradBox)
      ,CHFp_CONST_INT(dir) )
{
 CH_TIMELEAF("FORT_UDIVLOSIDEGRAD");
 FORTRAN_NAME( UDIVLOSIDEGRAD ,udivlosidegrad )(
      CHFt_FRA(gradPhi)
      ,CHFt_CONST_FRA(phi)
      ,CHFt_BOX(gradBox)
      ,CHFt_CONST_INT(dir) );
}
#endif  // GUARDUDIVLOSIDEGRAD 

#ifndef GUARDUDIVHISIDEGRAD 
#define GUARDUDIVHISIDEGRAD 
// Prototype for Fortran procedure UDivHiSideGrad ...
//
void FORTRAN_NAME( UDIVHISIDEGRAD ,udivhisidegrad )(
      CHFp_FRA(gradPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gradBox)
      ,CHFp_CONST_INT(dir) );

#define FORT_UDIVHISIDEGRAD FORTRAN_NAME( inlineUDIVHISIDEGRAD, inlineUDIVHISIDEGRAD)
#define FORTNT_UDIVHISIDEGRAD FORTRAN_NAME( UDIVHISIDEGRAD, udivhisidegrad)

inline void FORTRAN_NAME(inlineUDIVHISIDEGRAD, inlineUDIVHISIDEGRAD)(
      CHFp_FRA(gradPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gradBox)
      ,CHFp_CONST_INT(dir) )
{
 CH_TIMELEAF("FORT_UDIVHISIDEGRAD");
 FORTRAN_NAME( UDIVHISIDEGRAD ,udivhisidegrad )(
      CHFt_FRA(gradPhi)
      ,CHFt_CONST_FRA(phi)
      ,CHFt_BOX(gradBox)
      ,CHFt_CONST_INT(dir) );
}
#endif  // GUARDUDIVHISIDEGRAD 

#ifndef GUARDUDIVCENTERGRAD 
#define GUARDUDIVCENTERGRAD 
// Prototype for Fortran procedure UDivCenterGrad ...
//
void FORTRAN_NAME( UDIVCENTERGRAD ,udivcentergrad )(
      CHFp_FRA(gradPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gradBox)
      ,CHFp_CONST_INT(dir) );

#define FORT_UDIVCENTERGRAD FORTRAN_NAME( inlineUDIVCENTERGRAD, inlineUDIVCENTERGRAD)
#define FORTNT_UDIVCENTERGRAD FORTRAN_NAME( UDIVCENTERGRAD, udivcentergrad)

inline void FORTRAN_NAME(inlineUDIVCENTERGRAD, inlineUDIVCENTERGRAD)(
      CHFp_FRA(gradPhi)
      ,CHFp_CONST_FRA(phi)
      ,CHFp_BOX(gradBox)
      ,CHFp_CONST_INT(dir) )
{
 CH_TIMELEAF("FORT_UDIVCENTERGRAD");
 FORTRAN_NAME( UDIVCENTERGRAD ,udivcentergrad )(
      CHFt_FRA(gradPhi)
      ,CHFt_CONST_FRA(phi)
      ,CHFt_BOX(gradBox)
      ,CHFt_CONST_INT(dir) );
}
#endif  // GUARDUDIVCENTERGRAD 

#ifndef GUARDINCREMENTGRADPROD 
#define GUARDINCREMENTGRADPROD 
// Prototype for Fortran procedure INCREMENTGRADPROD ...
//
void FORTRAN_NAME( INCREMENTGRADPROD ,incrementgradprod )(
      CHFp_FRA(prod)
      ,CHFp_CONST_FRA(u)
      ,CHFp_CONST_FRA(v)
      ,CHFp_BOX(box)
      ,CHFp_REAL(dx)
      ,CHFp_REAL(factor)
      ,CHFp_INT(dir) );

#define FORT_INCREMENTGRADPROD FORTRAN_NAME( inlineINCREMENTGRADPROD, inlineINCREMENTGRADPROD)
#define FORTNT_INCREMENTGRADPROD FORTRAN_NAME( INCREMENTGRADPROD, incrementgradprod)

inline void FORTRAN_NAME(inlineINCREMENTGRADPROD, inlineINCREMENTGRADPROD)(
      CHFp_FRA(prod)
      ,CHFp_CONST_FRA(u)
      ,CHFp_CONST_FRA(v)
      ,CHFp_BOX(box)
      ,CHFp_REAL(dx)
      ,CHFp_REAL(factor)
      ,CHFp_INT(dir) )
{
 CH_TIMELEAF("FORT_INCREMENTGRADPROD");
 FORTRAN_NAME( INCREMENTGRADPROD ,incrementgradprod )(
      CHFt_FRA(prod)
      ,CHFt_CONST_FRA(u)
      ,CHFt_CONST_FRA(v)
      ,CHFt_BOX(box)
      ,CHFt_REAL(dx)
      ,CHFt_REAL(factor)
      ,CHFt_INT(dir) );
}
#endif  // GUARDINCREMENTGRADPROD 

#ifndef GUARDINCREMENTGRADPRODDU 
#define GUARDINCREMENTGRADPRODDU 
// Prototype for Fortran procedure IncrementGradProdDU ...
//
void FORTRAN_NAME( INCREMENTGRADPRODDU ,incrementgradproddu )(
      CHFp_FRA(prod)
      ,CHFp_CONST_FRA(du)
      ,CHFp_CONST_FRA1(v)
      ,CHFp_BOX(loBox)
      ,CHFp_CONST_INT(hasLo)
      ,CHFp_BOX(hiBox)
      ,CHFp_CONST_INT(hasHi)
      ,CHFp_BOX(centerBox)
      ,CHFp_BOX(box)
      ,CHFp_CONST_REAL(factor)
      ,CHFp_CONST_INT(dir) );

#define FORT_INCREMENTGRADPRODDU FORTRAN_NAME( inlineINCREMENTGRADPRODDU, inlineINCREMENTGRADPRODDU)
#define FORTNT_INCREMENTGRADPRODDU FORTRAN_NAME( INCREMENTGRADPRODDU, incrementgradproddu)

inline void FORTRAN_NAME(inlineINCREMENTGRADPRODDU, inlineINCREMENTGRADPRODDU)(
      CHFp_FRA(prod)
      ,CHFp_CONST_FRA(du)
      ,CHFp_CONST_FRA1(v)
      ,CHFp_BOX(loBox)
      ,CHFp_CONST_INT(hasLo)
      ,CHFp_BOX(hiBox)
      ,CHFp_CONST_INT(hasHi)
      ,CHFp_BOX(centerBox)
      ,CHFp_BOX(box)
      ,CHFp_CONST_REAL(factor)
      ,CHFp_CONST_INT(dir) )
{
 CH_TIMELEAF("FORT_INCREMENTGRADPRODDU");
 FORTRAN_NAME( INCREMENTGRADPRODDU ,incrementgradproddu )(
      CHFt_FRA(prod)
      ,CHFt_CONST_FRA(du)
      ,CHFt_CONST_FRA1(v)
      ,CHFt_BOX(loBox)
      ,CHFt_CONST_INT(hasLo)
      ,CHFt_BOX(hiBox)
      ,CHFt_CONST_INT(hasHi)
      ,CHFt_BOX(centerBox)
      ,CHFt_BOX(box)
      ,CHFt_CONST_REAL(factor)
      ,CHFt_CONST_INT(dir) );
}
#endif  // GUARDINCREMENTGRADPRODDU 

#ifndef GUARDCELLEXTRAP4THORDER 
#define GUARDCELLEXTRAP4THORDER 
// Prototype for Fortran procedure cellextrap4thorder ...
//
void FORTRAN_NAME( CELLEXTRAP4THORDER ,cellextrap4thorder )(
      CHFp_CONST_INT(dir)
      ,CHFp_CONST_INT(side)
      ,CHFp_BOX(interiorbox)
      ,CHFp_BOX(facebox)
      ,CHFp_FRA(array) );

#define FORT_CELLEXTRAP4THORDER FORTRAN_NAME( inlineCELLEXTRAP4THORDER, inlineCELLEXTRAP4THORDER)
#define FORTNT_CELLEXTRAP4THORDER FORTRAN_NAME( CELLEXTRAP4THORDER, cellextrap4thorder)

inline void FORTRAN_NAME(inlineCELLEXTRAP4THORDER, inlineCELLEXTRAP4THORDER)(
      CHFp_CONST_INT(dir)
      ,CHFp_CONST_INT(side)
      ,CHFp_BOX(interiorbox)
      ,CHFp_BOX(facebox)
      ,CHFp_FRA(array) )
{
 CH_TIMELEAF("FORT_CELLEXTRAP4THORDER");
 FORTRAN_NAME( CELLEXTRAP4THORDER ,cellextrap4thorder )(
      CHFt_CONST_INT(dir)
      ,CHFt_CONST_INT(side)
      ,CHFt_BOX(interiorbox)
      ,CHFt_BOX(facebox)
      ,CHFt_FRA(array) );
}
#endif  // GUARDCELLEXTRAP4THORDER 

#ifndef GUARDSECOND_ORDER_EXTRAP 
#define GUARDSECOND_ORDER_EXTRAP 
// Prototype for Fortran procedure second_order_extrap ...
//
void FORTRAN_NAME( SECOND_ORDER_EXTRAP ,second_order_extrap )(
      CHFp_CONST_INT(dir)
      ,CHFp_CONST_INT(side)
      ,CHFp_BOX(srcbox)
      ,CHFp_BOX(dstbox)
      ,CHFp_FRA(array) );

#define FORT_SECOND_ORDER_EXTRAP FORTRAN_NAME( inlineSECOND_ORDER_EXTRAP, inlineSECOND_ORDER_EXTRAP)
#define FORTNT_SECOND_ORDER_EXTRAP FORTRAN_NAME( SECOND_ORDER_EXTRAP, second_order_extrap)

inline void FORTRAN_NAME(inlineSECOND_ORDER_EXTRAP, inlineSECOND_ORDER_EXTRAP)(
      CHFp_CONST_INT(dir)
      ,CHFp_CONST_INT(side)
      ,CHFp_BOX(srcbox)
      ,CHFp_BOX(dstbox)
      ,CHFp_FRA(array) )
{
 CH_TIMELEAF("FORT_SECOND_ORDER_EXTRAP");
 FORTRAN_NAME( SECOND_ORDER_EXTRAP ,second_order_extrap )(
      CHFt_CONST_INT(dir)
      ,CHFt_CONST_INT(side)
      ,CHFt_BOX(srcbox)
      ,CHFt_BOX(dstbox)
      ,CHFt_FRA(array) );
}
#endif  // GUARDSECOND_ORDER_EXTRAP 

#ifndef GUARDAVERAGETRANSVERSEN 
#define GUARDAVERAGETRANSVERSEN 
// Prototype for Fortran procedure AverageTransverseN ...
//
void FORTRAN_NAME( AVERAGETRANSVERSEN ,averagetransversen )(
      CHFp_FRA(Nface)
      ,CHFp_CONST_FRA(NtransverseFace)
      ,CHFp_BOX(faceBox)
      ,CHFp_BOX(grownCellBox)
      ,CHFp_CONST_INT(faceDir)
      ,CHFp_CONST_INT(transverseDir) );

#define FORT_AVERAGETRANSVERSEN FORTRAN_NAME( inlineAVERAGETRANSVERSEN, inlineAVERAGETRANSVERSEN)
#define FORTNT_AVERAGETRANSVERSEN FORTRAN_NAME( AVERAGETRANSVERSEN, averagetransversen)

inline void FORTRAN_NAME(inlineAVERAGETRANSVERSEN, inlineAVERAGETRANSVERSEN)(
      CHFp_FRA(Nface)
      ,CHFp_CONST_FRA(NtransverseFace)
      ,CHFp_BOX(faceBox)
      ,CHFp_BOX(grownCellBox)
      ,CHFp_CONST_INT(faceDir)
      ,CHFp_CONST_INT(transverseDir) )
{
 CH_TIMELEAF("FORT_AVERAGETRANSVERSEN");
 FORTRAN_NAME( AVERAGETRANSVERSEN ,averagetransversen )(
      CHFt_FRA(Nface)
      ,CHFt_CONST_FRA(NtransverseFace)
      ,CHFt_BOX(faceBox)
      ,CHFt_BOX(grownCellBox)
      ,CHFt_CONST_INT(faceDir)
      ,CHFt_CONST_INT(transverseDir) );
}
#endif  // GUARDAVERAGETRANSVERSEN 

#ifndef GUARDCENTEREDGRADIENT4THORDER 
#define GUARDCENTEREDGRADIENT4THORDER 
// Prototype for Fortran procedure centeredgradient4thorder ...
//
void FORTRAN_NAME( CENTEREDGRADIENT4THORDER ,centeredgradient4thorder )(
      CHFp_FRA(gradf)
      ,CHFp_CONST_FRA1(f)
      ,CHFp_CONST_REALVECT(dx)
      ,CHFp_BOX(bx) );

#define FORT_CENTEREDGRADIENT4THORDER FORTRAN_NAME( inlineCENTEREDGRADIENT4THORDER, inlineCENTEREDGRADIENT4THORDER)
#define FORTNT_CENTEREDGRADIENT4THORDER FORTRAN_NAME( CENTEREDGRADIENT4THORDER, centeredgradient4thorder)

inline void FORTRAN_NAME(inlineCENTEREDGRADIENT4THORDER, inlineCENTEREDGRADIENT4THORDER)(
      CHFp_FRA(gradf)
      ,CHFp_CONST_FRA1(f)
      ,CHFp_CONST_REALVECT(dx)
      ,CHFp_BOX(bx) )
{
 CH_TIMELEAF("FORT_CENTEREDGRADIENT4THORDER");
 FORTRAN_NAME( CENTEREDGRADIENT4THORDER ,centeredgradient4thorder )(
      CHFt_FRA(gradf)
      ,CHFt_CONST_FRA1(f)
      ,CHFt_CONST_REALVECT(dx)
      ,CHFt_BOX(bx) );
}
#endif  // GUARDCENTEREDGRADIENT4THORDER 

#ifndef GUARDCENTEREDGRADIENT6THORDER 
#define GUARDCENTEREDGRADIENT6THORDER 
// Prototype for Fortran procedure centeredgradient6thorder ...
//
void FORTRAN_NAME( CENTEREDGRADIENT6THORDER ,centeredgradient6thorder )(
      CHFp_FRA(gradf)
      ,CHFp_CONST_FRA1(f)
      ,CHFp_CONST_REALVECT(dx)
      ,CHFp_BOX(bx) );

#define FORT_CENTEREDGRADIENT6THORDER FORTRAN_NAME( inlineCENTEREDGRADIENT6THORDER, inlineCENTEREDGRADIENT6THORDER)
#define FORTNT_CENTEREDGRADIENT6THORDER FORTRAN_NAME( CENTEREDGRADIENT6THORDER, centeredgradient6thorder)

inline void FORTRAN_NAME(inlineCENTEREDGRADIENT6THORDER, inlineCENTEREDGRADIENT6THORDER)(
      CHFp_FRA(gradf)
      ,CHFp_CONST_FRA1(f)
      ,CHFp_CONST_REALVECT(dx)
      ,CHFp_BOX(bx) )
{
 CH_TIMELEAF("FORT_CENTEREDGRADIENT6THORDER");
 FORTRAN_NAME( CENTEREDGRADIENT6THORDER ,centeredgradient6thorder )(
      CHFt_FRA(gradf)
      ,CHFt_CONST_FRA1(f)
      ,CHFt_CONST_REALVECT(dx)
      ,CHFt_BOX(bx) );
}
#endif  // GUARDCENTEREDGRADIENT6THORDER 

}

#endif
