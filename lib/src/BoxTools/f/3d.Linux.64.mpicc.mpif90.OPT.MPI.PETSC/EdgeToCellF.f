# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/EdgeToCellF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/EdgeToCellF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/REAL.H" 1
# 2 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/EdgeToCellF.C" 2
# 1 "./SPACE.H" 1
# 22 "./SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CH_assert.H" 1
# 18 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CH_assert.H" 2
# 59 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CH_assert.H" 2
# 23 "./SPACE.H" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/NamespaceHeader.H" 1
# 25 "./SPACE.H" 2
# 66 "./SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/NamespaceFooter.H" 1
# 67 "./SPACE.H" 2
# 3 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/EdgeToCellF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/EdgeToCellF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/EdgeToCellF.C" 2
      subroutine EDGETOCELL(
     & edgeData
     & ,iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
     & ,iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
     & ,cellData
     & ,icellDatalo0,icellDatalo1,icellDatalo2
     & ,icellDatahi0,icellDatahi1,icellDatahi2
     & ,icellBoxlo0,icellBoxlo1,icellBoxlo2
     & ,icellBoxhi0,icellBoxhi1,icellBoxhi2
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
      integer iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
      REAL*8 edgeData(
     & iedgeDatalo0:iedgeDatahi0,
     & iedgeDatalo1:iedgeDatahi1,
     & iedgeDatalo2:iedgeDatahi2)
      integer icellDatalo0,icellDatalo1,icellDatalo2
      integer icellDatahi0,icellDatahi1,icellDatahi2
      REAL*8 cellData(
     & icellDatalo0:icellDatahi0,
     & icellDatalo1:icellDatahi1,
     & icellDatalo2:icellDatahi2)
      integer icellBoxlo0,icellBoxlo1,icellBoxlo2
      integer icellBoxhi0,icellBoxhi1,icellBoxhi2
      integer dir
      integer i,j,k
      integer ii,jj,kk
      do k = icellBoxlo2,icellBoxhi2
      do j = icellBoxlo1,icellBoxhi1
      do i = icellBoxlo0,icellBoxhi0
      ii = i+CHF_ID(0,dir)
      jj = j+CHF_ID(1,dir)
      kk = k+CHF_ID(2,dir)
      cellData(i,j,k) = (0.500d0)*(
     & edgeData(i,j,k)
     & +edgeData(ii,jj,kk))
      enddo
      enddo
      enddo
      return
      end
      subroutine EDGETOINCREMENTCELL(
     & edgeData
     & ,iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
     & ,iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
     & ,cellData
     & ,icellDatalo0,icellDatalo1,icellDatalo2
     & ,icellDatahi0,icellDatahi1,icellDatahi2
     & ,icellBoxlo0,icellBoxlo1,icellBoxlo2
     & ,icellBoxhi0,icellBoxhi1,icellBoxhi2
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
      integer iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
      REAL*8 edgeData(
     & iedgeDatalo0:iedgeDatahi0,
     & iedgeDatalo1:iedgeDatahi1,
     & iedgeDatalo2:iedgeDatahi2)
      integer icellDatalo0,icellDatalo1,icellDatalo2
      integer icellDatahi0,icellDatahi1,icellDatahi2
      REAL*8 cellData(
     & icellDatalo0:icellDatahi0,
     & icellDatalo1:icellDatahi1,
     & icellDatalo2:icellDatahi2)
      integer icellBoxlo0,icellBoxlo1,icellBoxlo2
      integer icellBoxhi0,icellBoxhi1,icellBoxhi2
      integer dir
      integer i0,i1,i2
      integer ii0,ii1,ii2
      ii0=CHF_ID(0, dir)
      ii1=CHF_ID(1, dir)
      ii2=CHF_ID(2, dir)
      do i2 = icellBoxlo2,icellBoxhi2
      do i1 = icellBoxlo1,icellBoxhi1
      do i0 = icellBoxlo0,icellBoxhi0
         cellData(i0,i1,i2) = cellData(i0,i1,i2) + (0.500d0)*(
     & edgeData(i0,i1,i2) + edgeData(i0+ii0,i1+ii1,i2+ii2))
      enddo
      enddo
      enddo
      return
      end
      subroutine EDGETOCELLMAX(
     & edgeData
     & ,iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
     & ,iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
     & ,cellData
     & ,icellDatalo0,icellDatalo1,icellDatalo2
     & ,icellDatahi0,icellDatahi1,icellDatahi2
     & ,icellBoxlo0,icellBoxlo1,icellBoxlo2
     & ,icellBoxhi0,icellBoxhi1,icellBoxhi2
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
      integer iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
      REAL*8 edgeData(
     & iedgeDatalo0:iedgeDatahi0,
     & iedgeDatalo1:iedgeDatahi1,
     & iedgeDatalo2:iedgeDatahi2)
      integer icellDatalo0,icellDatalo1,icellDatalo2
      integer icellDatahi0,icellDatahi1,icellDatahi2
      REAL*8 cellData(
     & icellDatalo0:icellDatahi0,
     & icellDatalo1:icellDatahi1,
     & icellDatalo2:icellDatahi2)
      integer icellBoxlo0,icellBoxlo1,icellBoxlo2
      integer icellBoxhi0,icellBoxhi1,icellBoxhi2
      integer dir
      integer i,j,k
      integer ii,jj,kk
      do k = icellBoxlo2,icellBoxhi2
      do j = icellBoxlo1,icellBoxhi1
      do i = icellBoxlo0,icellBoxhi0
      ii = i+CHF_ID(0,dir)
      jj = j+CHF_ID(1,dir)
      kk = k+CHF_ID(2,dir)
      cellData(i,j,k) = max(
     & edgeData(i,j,k),
     & edgeData(ii,jj,kk))
      enddo
      enddo
      enddo
      return
      end
