# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovPhysicsF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovPhysicsF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovPhysicsF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BoxTools/SPACE.H" 1
# 22 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CH_assert.H" 1
# 18 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CH_assert.H" 2
# 59 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CH_assert.H" 2
# 23 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BoxTools/SPACE.H" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/NamespaceHeader.H" 1
# 25 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BoxTools/SPACE.H" 2
# 66 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/NamespaceFooter.H" 1
# 67 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BoxTools/SPACE.H" 2
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovPhysicsF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovPhysicsF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovPhysicsF.C" 2
      subroutine FLUXDIFFF(
     & diff
     & ,idifflo0,idifflo1
     & ,idiffhi0,idiffhi1
     & ,ndiffcomp
     & ,F
     & ,iFlo0,iFlo1
     & ,iFhi0,iFhi1
     & ,nFcomp
     & ,idir
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ndiffcomp
      integer idifflo0,idifflo1
      integer idiffhi0,idiffhi1
      REAL*8 diff(
     & idifflo0:idiffhi0,
     & idifflo1:idiffhi1,
     & 0:ndiffcomp-1)
      integer nFcomp
      integer iFlo0,iFlo1
      integer iFhi0,iFhi1
      REAL*8 F(
     & iFlo0:iFhi0,
     & iFlo1:iFhi1,
     & 0:nFcomp-1)
      integer idir
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      integer i0,i1
      integer c2fLo0,c2fLo1
      integer c2fHi0,c2fHi1
      integer iv
      c2fLo0= 0*CHF_ID(0, idir)
      c2fLo1= 0*CHF_ID(1, idir)
      c2fHi0= 1*CHF_ID(0, idir)
      c2fHi1= 1*CHF_ID(1, idir)
      do iv = 0,ndiffcomp - 1
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
            diff(i0,i1, iv) =
     & F(i0 +c2fHi0,i1 +c2fHi1, iv) -
     & F(i0 +c2fLo0,i1 +c2fLo1, iv)
      enddo
      enddo
      enddo
      return
      end
