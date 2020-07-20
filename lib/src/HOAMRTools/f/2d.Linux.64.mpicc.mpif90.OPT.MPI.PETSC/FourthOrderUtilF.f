# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/FourthOrderUtilF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/FourthOrderUtilF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/FourthOrderUtilF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BoxTools/SPACE.H" 1
# 22 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CH_assert.H" 1
# 18 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CH_assert.H" 2
# 59 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CH_assert.H" 2
# 23 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BoxTools/SPACE.H" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/NamespaceHeader.H" 1
# 25 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BoxTools/SPACE.H" 2
# 66 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/NamespaceFooter.H" 1
# 67 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BoxTools/SPACE.H" 2
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/FourthOrderUtilF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/FourthOrderUtilF.C" 2
      subroutine CELLTOFACE4THORDER(
     & faceData
     & ,ifaceDatalo0,ifaceDatalo1
     & ,ifaceDatahi0,ifaceDatahi1
     & ,nfaceDatacomp
     & ,cellData
     & ,icellDatalo0,icellDatalo1
     & ,icellDatahi0,icellDatahi1
     & ,ncellDatacomp
     & ,ifaceBoxlo0,ifaceBoxlo1
     & ,ifaceBoxhi0,ifaceBoxhi1
     & ,faceDir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nfaceDatacomp
      integer ifaceDatalo0,ifaceDatalo1
      integer ifaceDatahi0,ifaceDatahi1
      REAL*8 faceData(
     & ifaceDatalo0:ifaceDatahi0,
     & ifaceDatalo1:ifaceDatahi1,
     & 0:nfaceDatacomp-1)
      integer ncellDatacomp
      integer icellDatalo0,icellDatalo1
      integer icellDatahi0,icellDatahi1
      REAL*8 cellData(
     & icellDatalo0:icellDatahi0,
     & icellDatalo1:icellDatahi1,
     & 0:ncellDatacomp-1)
      integer ifaceBoxlo0,ifaceBoxlo1
      integer ifaceBoxhi0,ifaceBoxhi1
      integer faceDir
      integer i0,i1
      integer ii0,ii1
      integer comp
      REAL*8 factor1, factor2
      factor1 = (7.0d0)/(12.0d0)
      factor2 = -(1.0d0)/(12.0d0)
      ii0=CHF_ID(0,faceDir)
      ii1=CHF_ID(1,faceDir)
      do comp = 0, nfaceDatacomp-1
      do i1 = ifaceBoxlo1,ifaceBoxhi1
      do i0 = ifaceBoxlo0,ifaceBoxhi0
           faceData(i0,i1,comp)
     & = factor2 * cellData(i0 -2*ii0,i1 -2*ii1,comp)
     & + factor1 * cellData(i0 -ii0,i1 -ii1,comp)
     & + factor1 * cellData(i0,i1,comp)
     & + factor2 * cellData(i0 +ii0,i1 +ii1,comp)
      enddo
      enddo
      enddo
      return
      end
      subroutine CELLTOFACE4THORDERCENTERS(
     & faceData
     & ,ifaceDatalo0,ifaceDatalo1
     & ,ifaceDatahi0,ifaceDatahi1
     & ,nfaceDatacomp
     & ,cellData
     & ,icellDatalo0,icellDatalo1
     & ,icellDatahi0,icellDatahi1
     & ,ncellDatacomp
     & ,ifaceBoxlo0,ifaceBoxlo1
     & ,ifaceBoxhi0,ifaceBoxhi1
     & ,faceDir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nfaceDatacomp
      integer ifaceDatalo0,ifaceDatalo1
      integer ifaceDatahi0,ifaceDatahi1
      REAL*8 faceData(
     & ifaceDatalo0:ifaceDatahi0,
     & ifaceDatalo1:ifaceDatahi1,
     & 0:nfaceDatacomp-1)
      integer ncellDatacomp
      integer icellDatalo0,icellDatalo1
      integer icellDatahi0,icellDatahi1
      REAL*8 cellData(
     & icellDatalo0:icellDatahi0,
     & icellDatalo1:icellDatahi1,
     & 0:ncellDatacomp-1)
      integer ifaceBoxlo0,ifaceBoxlo1
      integer ifaceBoxhi0,ifaceBoxhi1
      integer faceDir
      integer i0,i1
      integer ii0,ii1
      integer comp
      REAL*8 factor1, factor2
      factor1 = (9.0d0)/(16.0d0)
      factor2 = -(1.0d0)/(16.0d0)
      ii0=CHF_ID(0,faceDir)
      ii1=CHF_ID(1,faceDir)
      do comp = 0, nfaceDatacomp-1
      do i1 = ifaceBoxlo1,ifaceBoxhi1
      do i0 = ifaceBoxlo0,ifaceBoxhi0
           faceData(i0,i1,comp)
     & = factor2 * cellData(i0 -2*ii0,i1 -2*ii1,comp)
     & + factor1 * cellData(i0 -ii0,i1 -ii1,comp)
     & + factor1 * cellData(i0,i1,comp)
     & + factor2 * cellData(i0 +ii0,i1 +ii1,comp)
      enddo
      enddo
      enddo
      return
      end
      subroutine INCREMENTLAPLACIAN(
     & lapPhi
     & ,ilapPhilo0,ilapPhilo1
     & ,ilapPhihi0,ilapPhihi1
     & ,nlapPhicomp
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,igridBoxlo0,igridBoxlo1
     & ,igridBoxhi0,igridBoxhi1
     & ,dir
     & ,factor
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nlapPhicomp
      integer ilapPhilo0,ilapPhilo1
      integer ilapPhihi0,ilapPhihi1
      REAL*8 lapPhi(
     & ilapPhilo0:ilapPhihi0,
     & ilapPhilo1:ilapPhihi1,
     & 0:nlapPhicomp-1)
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer igridBoxlo0,igridBoxlo1
      integer igridBoxhi0,igridBoxhi1
      integer dir
      REAL*8 factor
      integer i0,i1
      integer ii0,ii1
      integer comp
      REAL*8 thisLap
      ii0=CHF_ID(0,dir)
      ii1=CHF_ID(1,dir)
      do comp=0, nphicomp-1
      do i1 = igridBoxlo1,igridBoxhi1
      do i0 = igridBoxlo0,igridBoxhi0
            thisLap = phi(i0 +ii0,i1 +ii1, comp)
     & + phi(i0 -ii0,i1 -ii1, comp)
     & -(2.0d0)*phi(i0,i1, comp)
            lapPhi(i0,i1, comp) =
     & lapPhi(i0,i1, comp) + factor*thisLap
      enddo
      enddo
      enddo
      return
      end
      subroutine INCREMENTLOSIDELAPLACIAN(
     & lapPhi
     & ,ilapPhilo0,ilapPhilo1
     & ,ilapPhihi0,ilapPhihi1
     & ,nlapPhicomp
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,igridBoxlo0,igridBoxlo1
     & ,igridBoxhi0,igridBoxhi1
     & ,dir
     & ,factor
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nlapPhicomp
      integer ilapPhilo0,ilapPhilo1
      integer ilapPhihi0,ilapPhihi1
      REAL*8 lapPhi(
     & ilapPhilo0:ilapPhihi0,
     & ilapPhilo1:ilapPhihi1,
     & 0:nlapPhicomp-1)
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer igridBoxlo0,igridBoxlo1
      integer igridBoxhi0,igridBoxhi1
      integer dir
      REAL*8 factor
      integer i0,i1, comp
      integer ii0,ii1
      REAL*8 thisLap
      ii0=CHF_ID(0,dir)
      ii1=CHF_ID(1,dir)
      do comp=0, nphicomp-1
      do i1 = igridBoxlo1,igridBoxhi1
      do i0 = igridBoxlo0,igridBoxhi0
            thisLap =
     & (2.0d0)*phi(i0,i1,comp)
     & - (5.0d0)*phi(i0 +ii0,i1 +ii1,comp)
     & + (4.0d0)*phi(i0 +2*ii0,i1 +2*ii1,comp)
     & - phi(i0 +3*ii0,i1 +3*ii1,comp)
            lapPhi(i0,i1,comp) =
     & lapPhi(i0,i1,comp) + factor*thisLap
      enddo
      enddo
      enddo
      return
      end
      subroutine INCREMENTHISIDELAPLACIAN(
     & lapPhi
     & ,ilapPhilo0,ilapPhilo1
     & ,ilapPhihi0,ilapPhihi1
     & ,nlapPhicomp
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,igridBoxlo0,igridBoxlo1
     & ,igridBoxhi0,igridBoxhi1
     & ,dir
     & ,factor
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nlapPhicomp
      integer ilapPhilo0,ilapPhilo1
      integer ilapPhihi0,ilapPhihi1
      REAL*8 lapPhi(
     & ilapPhilo0:ilapPhihi0,
     & ilapPhilo1:ilapPhihi1,
     & 0:nlapPhicomp-1)
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer igridBoxlo0,igridBoxlo1
      integer igridBoxhi0,igridBoxhi1
      integer dir
      REAL*8 factor
      integer i0,i1, comp
      integer ii0,ii1
      REAL*8 thisLap
      ii0=CHF_ID(0,dir)
      ii1=CHF_ID(1,dir)
      do comp=0, nphicomp-1
      do i1 = igridBoxlo1,igridBoxhi1
      do i0 = igridBoxlo0,igridBoxhi0
            thisLap =
     & (2.0d0)*phi(i0,i1,comp)
     & - (5.0d0)*phi(i0 -ii0,i1 -ii1,comp)
     & + (4.0d0)*phi(i0 -2*ii0,i1 -2*ii1,comp)
     & - phi(i0 -3*ii0,i1 -3*ii1,comp)
            lapPhi(i0,i1,comp) =
     & lapPhi(i0,i1,comp) + factor*thisLap
      enddo
      enddo
      enddo
      return
      end
      subroutine UDIVLOSIDEGRAD(
     & gradPhi
     & ,igradPhilo0,igradPhilo1
     & ,igradPhihi0,igradPhihi1
     & ,ngradPhicomp
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,igradBoxlo0,igradBoxlo1
     & ,igradBoxhi0,igradBoxhi1
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ngradPhicomp
      integer igradPhilo0,igradPhilo1
      integer igradPhihi0,igradPhihi1
      REAL*8 gradPhi(
     & igradPhilo0:igradPhihi0,
     & igradPhilo1:igradPhihi1,
     & 0:ngradPhicomp-1)
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer igradBoxlo0,igradBoxlo1
      integer igradBoxhi0,igradBoxhi1
      integer dir
      integer i0,i1
      integer ii0,ii1
      integer iComp
      ii0=CHF_ID(0, dir)
      ii1=CHF_ID(1, dir)
      do iComp = 0, nphicomp - 1
      do i1 = igradBoxlo1,igradBoxhi1
      do i0 = igradBoxlo0,igradBoxhi0
            gradPhi(i0,i1, iComp) = (0.500d0)*(
     & -3*phi(i0,i1, iComp) +
     & 4*phi(i0+ii0,i1+ii1, iComp) -
     & phi(i0+2*ii0,i1+2*ii1, iComp))
      enddo
      enddo
      enddo
      return
      end
      subroutine UDIVHISIDEGRAD(
     & gradPhi
     & ,igradPhilo0,igradPhilo1
     & ,igradPhihi0,igradPhihi1
     & ,ngradPhicomp
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,igradBoxlo0,igradBoxlo1
     & ,igradBoxhi0,igradBoxhi1
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ngradPhicomp
      integer igradPhilo0,igradPhilo1
      integer igradPhihi0,igradPhihi1
      REAL*8 gradPhi(
     & igradPhilo0:igradPhihi0,
     & igradPhilo1:igradPhihi1,
     & 0:ngradPhicomp-1)
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer igradBoxlo0,igradBoxlo1
      integer igradBoxhi0,igradBoxhi1
      integer dir
      integer i0,i1
      integer ii0,ii1
      integer iComp
      ii0=CHF_ID(0, dir)
      ii1=CHF_ID(1, dir)
      do iComp = 0, nphicomp - 1
      do i1 = igradBoxlo1,igradBoxhi1
      do i0 = igradBoxlo0,igradBoxhi0
            gradPhi(i0,i1, iComp) = (0.500d0)*(
     & 3*phi(i0,i1, iComp) -
     & 4*phi(i0 -ii0,i1 -ii1, iComp) +
     & phi(i0 -2*ii0,i1 -2*ii1, iComp))
      enddo
      enddo
      enddo
      return
      end
      subroutine UDIVCENTERGRAD(
     & gradPhi
     & ,igradPhilo0,igradPhilo1
     & ,igradPhihi0,igradPhihi1
     & ,ngradPhicomp
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,igradBoxlo0,igradBoxlo1
     & ,igradBoxhi0,igradBoxhi1
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ngradPhicomp
      integer igradPhilo0,igradPhilo1
      integer igradPhihi0,igradPhihi1
      REAL*8 gradPhi(
     & igradPhilo0:igradPhihi0,
     & igradPhilo1:igradPhihi1,
     & 0:ngradPhicomp-1)
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer igradBoxlo0,igradBoxlo1
      integer igradBoxhi0,igradBoxhi1
      integer dir
      integer i0,i1
      integer ii0,ii1
      integer iComp
      ii0=CHF_ID(0, dir)
      ii1=CHF_ID(1, dir)
      do iComp = 0, nphicomp - 1
      do i1 = igradBoxlo1,igradBoxhi1
      do i0 = igradBoxlo0,igradBoxhi0
            gradPhi(i0,i1, iComp) = (0.500d0)*(
     & phi(i0+ii0,i1+ii1, iComp) -
     & phi(i0-ii0,i1-ii1, iComp))
      enddo
      enddo
      enddo
      return
      end
      subroutine INCREMENTGRADPROD(
     & prod
     & ,iprodlo0,iprodlo1
     & ,iprodhi0,iprodhi1
     & ,nprodcomp
     & ,u
     & ,iulo0,iulo1
     & ,iuhi0,iuhi1
     & ,nucomp
     & ,v
     & ,ivlo0,ivlo1
     & ,ivhi0,ivhi1
     & ,nvcomp
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & ,dx
     & ,factor
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nprodcomp
      integer iprodlo0,iprodlo1
      integer iprodhi0,iprodhi1
      REAL*8 prod(
     & iprodlo0:iprodhi0,
     & iprodlo1:iprodhi1,
     & 0:nprodcomp-1)
      integer nucomp
      integer iulo0,iulo1
      integer iuhi0,iuhi1
      REAL*8 u(
     & iulo0:iuhi0,
     & iulo1:iuhi1,
     & 0:nucomp-1)
      integer nvcomp
      integer ivlo0,ivlo1
      integer ivhi0,ivhi1
      REAL*8 v(
     & ivlo0:ivhi0,
     & ivlo1:ivhi1,
     & 0:nvcomp-1)
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      REAL*8 dx
      REAL*8 factor
      integer dir
      integer i0,i1, comp
      integer ii0,ii1
      REAL*8 halfOnDx, du, dv
      ii0=CHF_ID(0, dir)
      ii1=CHF_ID(1, dir)
      halfOnDx = (0.500d0)/dx
      if (nucomp .eq. nvcomp) then
         do comp=0, nprodcomp-1
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
               du = u(i0 +ii0,i1 +ii1, comp)
     & - u(i0 -ii0,i1 -ii1, comp)
               dv = v(i0 +ii0,i1 +ii1, comp)
     & - v(i0 -ii0,i1 -ii1, comp)
               prod(i0,i1, comp) = prod(i0,i1, comp)
     & + factor*halfOnDx*du*halfOnDx*dv
      enddo
      enddo
         enddo
      else if (nucomp.eq.1) then
         do comp=0, nprodcomp-1
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
               du = u(i0 +ii0,i1 +ii1, 0)
     & - u(i0 -ii0,i1 -ii1, 0)
               dv = v(i0 +ii0,i1 +ii1, comp)
     & - v(i0 -ii0,i1 -ii1, comp)
               prod(i0,i1, comp) = prod(i0,i1, comp)
     & + factor*halfOnDx*du*halfOnDx*dv
      enddo
      enddo
         enddo
      else if (nvcomp.eq.1) then
         do comp=0, nprodcomp-1
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
               du = u(i0 +ii0,i1 +ii1, comp)
     & - u(i0 -ii0,i1 -ii1, comp)
               dv = v(i0 +ii0,i1 +ii1, 0)
     & - v(i0 -ii0,i1 -ii1, 0)
               prod(i0,i1, comp) = prod(i0,i1, comp)
     & + factor*halfOnDx*du*halfOnDx*dv
      enddo
      enddo
         enddo
      endif
      return
      end
      subroutine INCREMENTGRADPRODDU(
     & prod
     & ,iprodlo0,iprodlo1
     & ,iprodhi0,iprodhi1
     & ,nprodcomp
     & ,du
     & ,idulo0,idulo1
     & ,iduhi0,iduhi1
     & ,nducomp
     & ,v
     & ,ivlo0,ivlo1
     & ,ivhi0,ivhi1
     & ,iloBoxlo0,iloBoxlo1
     & ,iloBoxhi0,iloBoxhi1
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1
     & ,ihiBoxhi0,ihiBoxhi1
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1
     & ,icenterBoxhi0,icenterBoxhi1
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & ,factor
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nprodcomp
      integer iprodlo0,iprodlo1
      integer iprodhi0,iprodhi1
      REAL*8 prod(
     & iprodlo0:iprodhi0,
     & iprodlo1:iprodhi1,
     & 0:nprodcomp-1)
      integer nducomp
      integer idulo0,idulo1
      integer iduhi0,iduhi1
      REAL*8 du(
     & idulo0:iduhi0,
     & idulo1:iduhi1,
     & 0:nducomp-1)
      integer ivlo0,ivlo1
      integer ivhi0,ivhi1
      REAL*8 v(
     & ivlo0:ivhi0,
     & ivlo1:ivhi1)
      integer iloBoxlo0,iloBoxlo1
      integer iloBoxhi0,iloBoxhi1
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1
      integer ihiBoxhi0,ihiBoxhi1
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1
      integer icenterBoxhi0,icenterBoxhi1
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      REAL*8 factor
      integer dir
      integer i0,i1
      integer ii0,ii1
      integer iComp
      REAL*8 dv(
     & iboxlo0:iboxhi0,
     & iboxlo1:iboxhi1)
      ii0=CHF_ID(0, dir)
      ii1=CHF_ID(1, dir)
      if (hasLo .eq. 1) then
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
            dv(i0,i1) = (0.500d0)*(
     & -3*v(i0,i1) +
     & 4*v(i0+ii0,i1+ii1) -
     & v(i0+2*ii0,i1+2*ii1))
      enddo
      enddo
      endif
      if (hasHi .eq. 1) then
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
            dv(i0,i1) = (0.500d0)*(
     & 3*v(i0,i1) -
     & 4*v(i0-ii0,i1-ii1) +
     & v(i0-2*ii0,i1-2*ii1))
      enddo
      enddo
      endif
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
         dv(i0,i1) = (0.500d0)*(
     & v(i0+ii0,i1+ii1) -
     & v(i0-ii0,i1-ii1))
      enddo
      enddo
      do iComp = 0, nprodcomp-1
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
            prod(i0,i1, iComp) = prod(i0,i1, iComp) +
     & factor*du(i0,i1, iComp)*dv(i0,i1)
      enddo
      enddo
      enddo
      return
      end
      subroutine CELLEXTRAP4THORDER(
     & dir
     & ,side
     & ,iinteriorboxlo0,iinteriorboxlo1
     & ,iinteriorboxhi0,iinteriorboxhi1
     & ,ifaceboxlo0,ifaceboxlo1
     & ,ifaceboxhi0,ifaceboxhi1
     & ,array
     & ,iarraylo0,iarraylo1
     & ,iarrayhi0,iarrayhi1
     & ,narraycomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer dir
      integer side
      integer iinteriorboxlo0,iinteriorboxlo1
      integer iinteriorboxhi0,iinteriorboxhi1
      integer ifaceboxlo0,ifaceboxlo1
      integer ifaceboxhi0,ifaceboxhi1
      integer narraycomp
      integer iarraylo0,iarraylo1
      integer iarrayhi0,iarrayhi1
      REAL*8 array(
     & iarraylo0:iarrayhi0,
     & iarraylo1:iarrayhi1,
     & 0:narraycomp-1)
      integer i,id,ni,j,jd,nj,
     & ghost_layer, p, comp, ncomp
      double precision coef(0:3,2), sum
      data coef / 4.d0, -6.d0, 4.d0, -1.d0,
     & 10.d0, -20.d0, 15.d0, -4.d0 /
      ni = 0
      nj = 0
      ghost_layer = 0
      ncomp = narraycomp
      id = CHF_ID(0,dir)*side
      jd = CHF_ID(1,dir)*side
      do j = ifaceboxlo1,ifaceboxhi1
      do i = ifaceboxlo0,ifaceboxhi0
        if (side .eq. -1) then
           ni = id*(i-iinteriorboxlo0)
           ghost_layer = ni
           nj = jd*(j-iinteriorboxlo1)
           ghost_layer = ghost_layer + nj
        else if (side .eq. 1) then
           ni = id*(i-iinteriorboxhi0)
           ghost_layer = ni
           nj = jd*(j-iinteriorboxhi1)
           ghost_layer = ghost_layer + nj
          endif
          do comp = 0, ncomp-1
             sum = 0.d0
             do p = 0, 3
                sum = sum + coef(p,ghost_layer)*
     & array(i-id*(ni+p),j-jd*(nj+p),comp)
             enddo
             array(i,j,comp) = sum
          enddo
      enddo
      enddo
      return
      end
      subroutine SECOND_ORDER_EXTRAP(
     & dir
     & ,side
     & ,isrcboxlo0,isrcboxlo1
     & ,isrcboxhi0,isrcboxhi1
     & ,idstboxlo0,idstboxlo1
     & ,idstboxhi0,idstboxhi1
     & ,array
     & ,iarraylo0,iarraylo1
     & ,iarrayhi0,iarrayhi1
     & ,narraycomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer dir
      integer side
      integer isrcboxlo0,isrcboxlo1
      integer isrcboxhi0,isrcboxhi1
      integer idstboxlo0,idstboxlo1
      integer idstboxhi0,idstboxhi1
      integer narraycomp
      integer iarraylo0,iarraylo1
      integer iarrayhi0,iarrayhi1
      REAL*8 array(
     & iarraylo0:iarrayhi0,
     & iarraylo1:iarrayhi1,
     & 0:narraycomp-1)
      double precision coef(0:2), sum
      data coef / 3.d0, -3.d0, 1.d0 /
      integer i,id,ni,j,jd,nj, p, comp, ncomp
      ni = 0
      nj = 0
      ncomp = narraycomp
      id = CHF_ID(0,dir)*side
      jd = CHF_ID(1,dir)*side
      do j = idstboxlo1,idstboxhi1
      do i = idstboxlo0,idstboxhi0
        if (side .eq. -1) then
           ni = id*(i-isrcboxlo0)
           nj = jd*(j-isrcboxlo1)
        else if (side .eq. 1) then
           ni = id*(i-isrcboxhi0)
           nj = jd*(j-isrcboxhi1)
          endif
          do comp = 0, ncomp-1
             sum = 0.d0
             do p = 0, 2
                sum = sum + coef(p)*
     & array(i-id*(ni+p),j-jd*(nj+p),comp)
             enddo
             array(i,j,comp) = sum
          enddo
      enddo
      enddo
      return
      end
      subroutine AVERAGETRANSVERSEN(
     & Nface
     & ,iNfacelo0,iNfacelo1
     & ,iNfacehi0,iNfacehi1
     & ,nNfacecomp
     & ,NtransverseFace
     & ,iNtransverseFacelo0,iNtransverseFacelo1
     & ,iNtransverseFacehi0,iNtransverseFacehi1
     & ,nNtransverseFacecomp
     & ,ifaceBoxlo0,ifaceBoxlo1
     & ,ifaceBoxhi0,ifaceBoxhi1
     & ,igrownCellBoxlo0,igrownCellBoxlo1
     & ,igrownCellBoxhi0,igrownCellBoxhi1
     & ,faceDir
     & ,transverseDir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nNfacecomp
      integer iNfacelo0,iNfacelo1
      integer iNfacehi0,iNfacehi1
      REAL*8 Nface(
     & iNfacelo0:iNfacehi0,
     & iNfacelo1:iNfacehi1,
     & 0:nNfacecomp-1)
      integer nNtransverseFacecomp
      integer iNtransverseFacelo0,iNtransverseFacelo1
      integer iNtransverseFacehi0,iNtransverseFacehi1
      REAL*8 NtransverseFace(
     & iNtransverseFacelo0:iNtransverseFacehi0,
     & iNtransverseFacelo1:iNtransverseFacehi1,
     & 0:nNtransverseFacecomp-1)
      integer ifaceBoxlo0,ifaceBoxlo1
      integer ifaceBoxhi0,ifaceBoxhi1
      integer igrownCellBoxlo0,igrownCellBoxlo1
      integer igrownCellBoxhi0,igrownCellBoxhi1
      integer faceDir
      integer transverseDir
      integer idxN, s
      integer i0,i1
      integer iif0,iif1
      integer iit0,iit1
      REAL*8 NtrSum(
     & igrownCellBoxlo0:igrownCellBoxhi0,
     & igrownCellBoxlo1:igrownCellBoxhi1,
     & 0:2 -1)
      iif0=CHF_ID(0, faceDir)
      iif1=CHF_ID(1, faceDir)
      iit0=CHF_ID(0, transverseDir)
      iit1=CHF_ID(1, transverseDir)
      idxN = transverseDir*2
      do s = 0, 2 -1
      do i1 = igrownCellBoxlo1,igrownCellBoxhi1
      do i0 = igrownCellBoxlo0,igrownCellBoxhi0
            NtrSum(i0,i1, s) =
     & NtransverseFace(i0,i1, idxN+s) +
     & NtransverseFace(i0+iit0,i1+iit1, idxN+s)
      enddo
      enddo
      enddo
      do s = 0, 2 -1
      do i1 = ifaceBoxlo1,ifaceBoxhi1
      do i0 = ifaceBoxlo0,ifaceBoxhi0
            Nface(i0,i1, idxN+s) = (0.250d0)*(
     & NtrSum(i0-iif0,i1-iif1, s) +
     & NtrSum(i0,i1, s))
      enddo
      enddo
      enddo
      return
      end
      subroutine CENTEREDGRADIENT4THORDER(
     & gradf
     & ,igradflo0,igradflo1
     & ,igradfhi0,igradfhi1
     & ,ngradfcomp
     & ,f
     & ,iflo0,iflo1
     & ,ifhi0,ifhi1
     & ,dx
     & ,ibxlo0,ibxlo1
     & ,ibxhi0,ibxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ngradfcomp
      integer igradflo0,igradflo1
      integer igradfhi0,igradfhi1
      REAL*8 gradf(
     & igradflo0:igradfhi0,
     & igradflo1:igradfhi1,
     & 0:ngradfcomp-1)
      integer iflo0,iflo1
      integer ifhi0,ifhi1
      REAL*8 f(
     & iflo0:ifhi0,
     & iflo1:ifhi1)
      REAL*8 dx(0:1)
      integer ibxlo0,ibxlo1
      integer ibxhi0,ibxhi1
      integer i0,i1
      integer ii0,ii1
      integer idir
      REAL*8 dif1, dif2
      do i1 = ibxlo1,ibxhi1
      do i0 = ibxlo0,ibxhi0
         do idir = 0, 2 -1
      ii0=CHF_ID(0, idir)
      ii1=CHF_ID(1, idir)
            dif1 = f(i0 +ii0,i1 +ii1) - f(i0 -ii0,i1 -ii1)
            dif2 = f(i0 +2*ii0,i1 +2*ii1) - f(i0 -2*ii0,i1 -2*ii1)
            gradf(i0,i1, idir) =
     & ((8.0d0) * dif1 - dif2) / ((12.0d0) * dx(idir))
         end do
      enddo
      enddo
      return
      end
      subroutine CENTEREDGRADIENT6THORDER(
     & gradf
     & ,igradflo0,igradflo1
     & ,igradfhi0,igradfhi1
     & ,ngradfcomp
     & ,f
     & ,iflo0,iflo1
     & ,ifhi0,ifhi1
     & ,dx
     & ,ibxlo0,ibxlo1
     & ,ibxhi0,ibxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ngradfcomp
      integer igradflo0,igradflo1
      integer igradfhi0,igradfhi1
      REAL*8 gradf(
     & igradflo0:igradfhi0,
     & igradflo1:igradfhi1,
     & 0:ngradfcomp-1)
      integer iflo0,iflo1
      integer ifhi0,ifhi1
      REAL*8 f(
     & iflo0:ifhi0,
     & iflo1:ifhi1)
      REAL*8 dx(0:1)
      integer ibxlo0,ibxlo1
      integer ibxhi0,ibxhi1
      integer i0,i1
      integer ii0,ii1
      integer idir
      REAL*8 dif1, dif2, dif3
      do i1 = ibxlo1,ibxhi1
      do i0 = ibxlo0,ibxhi0
         do idir = 0, 2 -1
      ii0=CHF_ID(0, idir)
      ii1=CHF_ID(1, idir)
            dif1 = f(i0 +ii0,i1 +ii1) - f(i0 -ii0,i1 -ii1)
            dif2 = f(i0 +2*ii0,i1 +2*ii1) - f(i0 -2*ii0,i1 -2*ii1)
            dif3 = f(i0 +3*ii0,i1 +3*ii1) - f(i0 -3*ii0,i1 -3*ii1)
            gradf(i0,i1, idir) =
     & (((4.0d0)*(10.0d0)+(5.0d0))*dif1 - (9.0d0)*dif2 + dif3) /
     & ((6.0d0) * (10.0d0) * dx(idir))
         end do
      enddo
      enddo
      return
      end