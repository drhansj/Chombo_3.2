# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C" 2
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
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C" 2
# 1 "./MASKVAL.H" 1
# 11 "./MASKVAL.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/UsingNamespace.H" 1
# 12 "./MASKVAL.H" 2
# 7 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C" 2
# 83 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GradientF.C"
      subroutine MACGRAD(
     & edgeGrad
     & ,iedgeGradlo0,iedgeGradlo1
     & ,iedgeGradhi0,iedgeGradhi1
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,iedgeGridlo0,iedgeGridlo1
     & ,iedgeGridhi0,iedgeGridhi1
     & ,dx
     & ,dir
     & ,edgeDir
     & ,iBLcornerBoxlo0,iBLcornerBoxlo1
     & ,iBLcornerBoxhi0,iBLcornerBoxhi1
     & ,iBRcornerBoxlo0,iBRcornerBoxlo1
     & ,iBRcornerBoxhi0,iBRcornerBoxhi1
     & ,iULcornerBoxlo0,iULcornerBoxlo1
     & ,iULcornerBoxhi0,iULcornerBoxhi1
     & ,iURcornerBoxlo0,iURcornerBoxlo1
     & ,iURcornerBoxhi0,iURcornerBoxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer iedgeGradlo0,iedgeGradlo1
      integer iedgeGradhi0,iedgeGradhi1
      REAL*8 edgeGrad(
     & iedgeGradlo0:iedgeGradhi0,
     & iedgeGradlo1:iedgeGradhi1)
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1)
      integer iedgeGridlo0,iedgeGridlo1
      integer iedgeGridhi0,iedgeGridhi1
      REAL*8 dx
      integer dir
      integer edgeDir
      integer iBLcornerBoxlo0,iBLcornerBoxlo1
      integer iBLcornerBoxhi0,iBLcornerBoxhi1
      integer iBRcornerBoxlo0,iBRcornerBoxlo1
      integer iBRcornerBoxhi0,iBRcornerBoxhi1
      integer iULcornerBoxlo0,iULcornerBoxlo1
      integer iULcornerBoxhi0,iULcornerBoxhi1
      integer iURcornerBoxlo0,iURcornerBoxlo1
      integer iURcornerBoxhi0,iURcornerBoxhi1
      integer i,j
      integer ii,jj
      integer iedge,jedge
      REAL*8 factor
      ii = CHF_ID(0,dir)
      jj = CHF_ID(1,dir)
      iedge = CHF_ID(edgeDir,0)
      jedge = CHF_ID(edgeDir,1)
      if (dir.eq.edgeDir) then
         factor = (1.0d0)/dx
      do j = iedgeGridlo1,iedgeGridhi1
      do i = iedgeGridlo0,iedgeGridhi0
         edgeGrad(i,j) = factor*(phi(i,j)
     & -phi(i-ii,j-jj))
      enddo
      enddo
      else
         factor = (0.250d0)/dx
      do j = iedgeGridlo1,iedgeGridhi1
      do i = iedgeGridlo0,iedgeGridhi0
         edgeGrad(i,j) = factor*(phi(i+ii,j+jj)
     & -phi(i-ii,j-jj)
     & +phi(i+ii-iedge,j+jj-jedge)
     & -phi(i-ii-iedge,j-jj-jedge))
      enddo
      enddo
      do j = iBLcornerBoxlo1,iBLcornerBoxhi1
      do i = iBLcornerBoxlo0,iBLcornerBoxhi0
         edgeGrad(i,j) = factor*
     & ((3.0d0)*(phi(i+ii,j+jj)
     & -phi(i-ii,j-jj))
     & -(phi(i+ii+iedge,j+jj+jedge)
     & -phi(i-ii+iedge,j-jj+jedge)))
      enddo
      enddo
      do j = iBRcornerBoxlo1,iBRcornerBoxhi1
      do i = iBRcornerBoxlo0,iBRcornerBoxhi0
         edgeGrad(i,j) = factor*
     & ((3.0d0)*(phi(i+ii-iedge,j+jj-jedge)
     & -phi(i-ii-iedge,j-jj-jedge))
     & -(phi(i+ii-2*iedge,j+jj-2*jedge)
     & -phi(i-ii-2*iedge,j-jj-2*jedge)))
      enddo
      enddo
      do j = iULcornerBoxlo1,iULcornerBoxhi1
      do i = iULcornerBoxlo0,iULcornerBoxhi0
         edgeGrad(i,j) = factor*
     & ((3.0d0)*(phi(i+ii,j+jj)
     & -phi(i-ii,j-jj))
     & -(phi(i+ii+iedge,j+jj+jedge)
     & -phi(i-ii+iedge,j-jj+jedge)))
      enddo
      enddo
      do j = iURcornerBoxlo1,iURcornerBoxhi1
      do i = iURcornerBoxlo0,iURcornerBoxhi0
         edgeGrad(i,j) = factor*
     & ((3.0d0)*(phi(i+ii-iedge,j+jj-jedge)
     & -phi(i-ii-iedge,j-jj-jedge))
     & -(phi(i+ii-2*iedge,j+jj-2*jedge)
     & -phi(i-ii-2*iedge,j-jj-2*jedge)))
      enddo
      enddo
      endif
      return
      end
      subroutine CRSEONESIDEGRAD(
     & edgeGrad
     & ,iedgeGradlo0,iedgeGradlo1
     & ,iedgeGradhi0,iedgeGradhi1
     & ,mask
     & ,imasklo0,imasklo1
     & ,imaskhi0,imaskhi1
     & ,iloEdgeBoxlo0,iloEdgeBoxlo1
     & ,iloEdgeBoxhi0,iloEdgeBoxhi1
     & ,ihiEdgeBoxlo0,ihiEdgeBoxlo1
     & ,ihiEdgeBoxhi0,ihiEdgeBoxhi1
     & ,dir
     & ,doLo
     & ,doHi
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer iedgeGradlo0,iedgeGradlo1
      integer iedgeGradhi0,iedgeGradhi1
      REAL*8 edgeGrad(
     & iedgeGradlo0:iedgeGradhi0,
     & iedgeGradlo1:iedgeGradhi1)
      integer imasklo0,imasklo1
      integer imaskhi0,imaskhi1
      integer mask(
     & imasklo0:imaskhi0,
     & imasklo1:imaskhi1)
      integer iloEdgeBoxlo0,iloEdgeBoxlo1
      integer iloEdgeBoxhi0,iloEdgeBoxhi1
      integer ihiEdgeBoxlo0,ihiEdgeBoxlo1
      integer ihiEdgeBoxhi0,ihiEdgeBoxhi1
      integer dir
      integer doLo
      integer doHi
      integer i,j
      integer ii,jj
      ii = CHF_ID(dir,0)
      jj = CHF_ID(dir,1)
      if (doLo.eq.1) then
      do j = iloEdgeBoxlo1,iloEdgeBoxhi1
      do i = iloEdgeBoxlo0,iloEdgeBoxhi0
         if (mask(i-2*ii, j-2*jj).eq. 0) then
            edgeGrad(i,j) = (2.0d0)*edgeGrad(i-ii,j-jj)
     & -edgeGrad(i-2*ii,j-2*jj)
         else if(mask(i-ii,j-jj).eq. 0) then
            edgeGrad(i,j) = edgeGrad(i-ii,j-jj)
         else
         endif
      enddo
      enddo
      endif
      if (doHi.eq.1) then
      do j = ihiEdgeBoxlo1,ihiEdgeBoxhi1
      do i = ihiEdgeBoxlo0,ihiEdgeBoxhi0
         if (mask(i+ii, j+jj).eq. 0) then
            edgeGrad(i,j) = (2.0d0)*edgeGrad(i+ii,j+jj)
     & -edgeGrad(i+2*ii,j+2*jj)
         else if(mask(i,j).eq. 0) then
            edgeGrad(i,j) = edgeGrad(i+ii,j+jj)
         else
         endif
      enddo
      enddo
      endif
      return
      end
      subroutine GRADCC(
     & gradPhi
     & ,igradPhilo0,igradPhilo1
     & ,igradPhihi0,igradPhihi1
     & ,phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,igridBoxlo0,igridBoxlo1
     & ,igridBoxhi0,igridBoxhi1
     & ,dx
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer igradPhilo0,igradPhilo1
      integer igradPhihi0,igradPhihi1
      REAL*8 gradPhi(
     & igradPhilo0:igradPhihi0,
     & igradPhilo1:igradPhihi1)
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1)
      integer igridBoxlo0,igridBoxlo1
      integer igridBoxhi0,igridBoxhi1
      REAL*8 dx
      integer dir
      integer i,j
      integer ii,jj
      REAL*8 factor
      ii = CHF_ID(dir,0)
      jj = CHF_ID(dir,1)
      factor = (0.500d0)/dx
      do j = igridBoxlo1,igridBoxhi1
      do i = igridBoxlo0,igridBoxhi0
      gradPhi(i,j) = factor*(phi(i+ii,j+jj)
     & -phi(i-ii,j-jj))
      enddo
      enddo
      return
      end