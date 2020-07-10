# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/testCHArray_rankDimPlus2F.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/testCHArray_rankDimPlus2F.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/testCHArray_rankDimPlus2F.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 1
# 22 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H" 1
# 18 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H" 2
# 59 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H" 2
# 23 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/NamespaceHeader.H" 1
# 25 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 2
# 66 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/NamespaceFooter.H" 1
# 67 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 2
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/testCHArray_rankDimPlus2F.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/testCHArray_rankDimPlus2F.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/testCHArray_rankDimPlus2F.C" 2
      subroutine RANKCHARRAYSPACEDIMPLUS2CONT(
     & arr
     & ,iarrlo0
     & ,iarrlo1
     & ,iarrlo2
     & ,iarrlo3
     & ,iarrhi0
     & ,iarrhi1
     & ,iarrhi2
     & ,iarrhi3
     & ,arrc
     & ,iarrclo0
     & ,iarrclo1
     & ,iarrclo2
     & ,iarrclo3
     & ,iarrchi0
     & ,iarrchi1
     & ,iarrchi2
     & ,iarrchi3
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer iarrlo0
      integer iarrlo1
      integer iarrlo2
      integer iarrlo3
      integer iarrhi0
      integer iarrhi1
      integer iarrhi2
      integer iarrhi3
      REAL*8 arr(
     & iarrlo0:iarrhi0,
     & iarrlo1:iarrhi1,
     & iarrlo2:iarrhi2,
     & iarrlo3:iarrhi3)
      integer iarrclo0
      integer iarrclo1
      integer iarrclo2
      integer iarrclo3
      integer iarrchi0
      integer iarrchi1
      integer iarrchi2
      integer iarrchi3
      REAL*8 arrc(
     & iarrclo0:iarrchi0,
     & iarrclo1:iarrchi1,
     & iarrclo2:iarrchi2,
     & iarrclo3:iarrchi3)
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      integer i0,i1
      integer c0, c1
      REAL*8 inc;
      inc = (0.500d0)
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
         do c1 = iarrclo1, iarrchi1
            do c0 = iarrclo0, iarrchi0
               arr(c0, c1, i0,i1) =
     & arrc(c0, c1, i0,i1) + inc
               inc = inc + (0.500d0)
            enddo
         enddo
      enddo
      enddo
      return
      end
      subroutine RANKCHARRAYSPACEDIMPLUS2DIST(
     & arr
     & ,iarrlo0
     & ,iarrlo1
     & ,iarrlo2
     & ,iarrlo3
     & ,iarrhi0
     & ,iarrhi1
     & ,iarrhi2
     & ,iarrhi3
     & ,arrc
     & ,iarrclo0
     & ,iarrclo1
     & ,iarrclo2
     & ,iarrclo3
     & ,iarrchi0
     & ,iarrchi1
     & ,iarrchi2
     & ,iarrchi3
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & ,dimc0
     & ,dimc1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer iarrlo0
      integer iarrlo1
      integer iarrlo2
      integer iarrlo3
      integer iarrhi0
      integer iarrhi1
      integer iarrhi2
      integer iarrhi3
      REAL*8 arr(
     & iarrlo0:iarrhi0,
     & iarrlo1:iarrhi1,
     & iarrlo2:iarrhi2,
     & iarrlo3:iarrhi3)
      integer iarrclo0
      integer iarrclo1
      integer iarrclo2
      integer iarrclo3
      integer iarrchi0
      integer iarrchi1
      integer iarrchi2
      integer iarrchi3
      REAL*8 arrc(
     & iarrclo0:iarrchi0,
     & iarrclo1:iarrchi1,
     & iarrclo2:iarrchi2,
     & iarrclo3:iarrchi3)
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      integer dimc0
      integer dimc1
      integer i0,i1
      integer c0, c1
      REAL*8 inc;
      inc = (0.500d0)
      do c1 = 0, dimc1-1
         do c0 = 0, dimc0-1
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
               arr(i0,i1, c0, c1) =
     & arrc(i0,i1, c0, c1) + inc
               inc = inc + (0.500d0)
      enddo
      enddo
         enddo
      enddo
      return
      end
