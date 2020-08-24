# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/MaskValueF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/MaskValueF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/MaskValueF.C" 2
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
# 3 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/MaskValueF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/MaskValueF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/MaskValueF.C" 2
      subroutine MASKVALUE(
     & mask
     & ,imasklo0,imasklo1,imasklo2
     & ,imaskhi0,imaskhi1,imaskhi2
     & ,test
     & ,itestlo0,itestlo1,itestlo2
     & ,itesthi0,itesthi1,itesthi2
     & ,ibxlo0,ibxlo1,ibxlo2
     & ,ibxhi0,ibxhi1,ibxhi2
     & ,val
     & ,onoff
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer imasklo0,imasklo1,imasklo2
      integer imaskhi0,imaskhi1,imaskhi2
      REAL*8 mask(
     & imasklo0:imaskhi0,
     & imasklo1:imaskhi1,
     & imasklo2:imaskhi2)
      integer itestlo0,itestlo1,itestlo2
      integer itesthi0,itesthi1,itesthi2
      integer test(
     & itestlo0:itesthi0,
     & itestlo1:itesthi1,
     & itestlo2:itesthi2)
      integer ibxlo0,ibxlo1,ibxlo2
      integer ibxhi0,ibxhi1,ibxhi2
      integer val
      integer onoff
      integer i0,i1,i2
      if (onoff .eq. 1) then
      do i2 = ibxlo2,ibxhi2
      do i1 = ibxlo1,ibxhi1
      do i0 = ibxlo0,ibxhi0
         if (test(i0,i1,i2) .eq. val) then
            mask(i0,i1,i2) = (1.0d0)
         else
            mask(i0,i1,i2) = 0
         endif
      enddo
      enddo
      enddo
      else
      do i2 = ibxlo2,ibxhi2
      do i1 = ibxlo1,ibxhi1
      do i0 = ibxlo0,ibxhi0
         if (test(i0,i1,i2) .eq. val) then
            mask(i0,i1,i2) = 0
         else
            mask(i0,i1,i2) = (1.0d0)
         endif
      enddo
      enddo
      enddo
      endif
      return
      end
