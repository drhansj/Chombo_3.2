# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/BaseFabIntPlusF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/BaseFabIntPlusF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/BaseFabIntPlusF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BoxTools/SPACE.H" 1
# 22 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CH_assert.H" 1
# 18 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CH_assert.H" 2
# 59 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CH_assert.H" 2
# 23 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BoxTools/SPACE.H" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/NamespaceHeader.H" 1
# 25 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BoxTools/SPACE.H" 2
# 66 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/NamespaceFooter.H" 1
# 67 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BoxTools/SPACE.H" 2
# 3 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/BaseFabIntPlusF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/BaseFabIntPlusF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/BaseFabIntPlusF.C" 2
      subroutine BASEFABINTPLUS(
     & sum
     & ,isumlo0,isumlo1,isumlo2
     & ,isumhi0,isumhi1,isumhi2
     & ,nsumcomp
     & ,piece
     & ,ipiecelo0,ipiecelo1,ipiecelo2
     & ,ipiecehi0,ipiecehi1,ipiecehi2
     & ,npiececomp
     & ,ibxlo0,ibxlo1,ibxlo2
     & ,ibxhi0,ibxhi1,ibxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nsumcomp
      integer isumlo0,isumlo1,isumlo2
      integer isumhi0,isumhi1,isumhi2
      integer sum(
     & isumlo0:isumhi0,
     & isumlo1:isumhi1,
     & isumlo2:isumhi2,
     & 0:nsumcomp-1)
      integer npiececomp
      integer ipiecelo0,ipiecelo1,ipiecelo2
      integer ipiecehi0,ipiecehi1,ipiecehi2
      integer piece(
     & ipiecelo0:ipiecehi0,
     & ipiecelo1:ipiecehi1,
     & ipiecelo2:ipiecehi2,
     & 0:npiececomp-1)
      integer ibxlo0,ibxlo1,ibxlo2
      integer ibxhi0,ibxhi1,ibxhi2
      integer i0,i1,i2
      integer var
      do var = 0, nsumcomp-1
      do i2 = ibxlo2,ibxhi2
      do i1 = ibxlo1,ibxhi1
      do i0 = ibxlo0,ibxhi0
            sum(i0,i1,i2, var) = sum(i0,i1,i2, var) +
     & piece(i0,i1,i2, var)
      enddo
      enddo
      enddo
      enddo
      return
      end