# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/CellToEdgeF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/CellToEdgeF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/REAL.H" 1
# 2 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/CellToEdgeF.C" 2
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
# 3 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/CellToEdgeF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/CellToEdgeF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/BoxTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/CellToEdgeF.C" 2
      subroutine CELLTOEDGE(
     & cellData
     & ,icellDatalo0,icellDatalo1,icellDatalo2
     & ,icellDatahi0,icellDatahi1,icellDatahi2
     & ,edgeData
     & ,iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
     & ,iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
     & ,iedgeBoxlo0,iedgeBoxlo1,iedgeBoxlo2
     & ,iedgeBoxhi0,iedgeBoxhi1,iedgeBoxhi2
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer icellDatalo0,icellDatalo1,icellDatalo2
      integer icellDatahi0,icellDatahi1,icellDatahi2
      REAL*8 cellData(
     & icellDatalo0:icellDatahi0,
     & icellDatalo1:icellDatahi1,
     & icellDatalo2:icellDatahi2)
      integer iedgeDatalo0,iedgeDatalo1,iedgeDatalo2
      integer iedgeDatahi0,iedgeDatahi1,iedgeDatahi2
      REAL*8 edgeData(
     & iedgeDatalo0:iedgeDatahi0,
     & iedgeDatalo1:iedgeDatahi1,
     & iedgeDatalo2:iedgeDatahi2)
      integer iedgeBoxlo0,iedgeBoxlo1,iedgeBoxlo2
      integer iedgeBoxhi0,iedgeBoxhi1,iedgeBoxhi2
      integer dir
      integer i,j,k
      integer ii,jj,kk
      do k = iedgeBoxlo2,iedgeBoxhi2
      do j = iedgeBoxlo1,iedgeBoxhi1
      do i = iedgeBoxlo0,iedgeBoxhi0
        ii = i-CHF_ID(0,dir)
        jj = j-CHF_ID(1,dir)
        kk = k-CHF_ID(2,dir)
        edgeData(i,j,k) = (0.500d0)*(
     & cellData(ii,jj,kk)
     & + cellData(i,j,k) )
      enddo
      enddo
      enddo
        return
        end