# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/HalveIntF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/HalveIntF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/HalveIntF.C" 2
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
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/HalveIntF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/HalveIntF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/HalveIntF.C" 2
      subroutine HALVEINT(
     & arr
     & ,iarrlo0,iarrlo1
     & ,iarrhi0,iarrhi1
     & ,narrcomp
     & ,ibxlo0,ibxlo1
     & ,ibxhi0,ibxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer narrcomp
      integer iarrlo0,iarrlo1
      integer iarrhi0,iarrhi1
      integer arr(
     & iarrlo0:iarrhi0,
     & iarrlo1:iarrhi1,
     & 0:narrcomp-1)
      integer ibxlo0,ibxlo1
      integer ibxhi0,ibxhi1
      integer i0,i1
      integer var
      do var = 0, narrcomp-1
      do i1 = ibxlo1,ibxhi1
      do i0 = ibxlo0,ibxhi0
            arr(i0,i1, var) = arr(i0,i1, var) / 2
      enddo
      enddo
      enddo
      return
      end
