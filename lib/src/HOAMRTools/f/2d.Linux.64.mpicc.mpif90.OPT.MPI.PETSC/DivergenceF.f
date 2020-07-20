# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/DivergenceF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/DivergenceF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/DivergenceF.C" 2
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
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/DivergenceF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/DivergenceF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/HOAMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/DivergenceF.C" 2
      subroutine DIVERGENCE(
     & uEdge
     & ,iuEdgelo0,iuEdgelo1
     & ,iuEdgehi0,iuEdgehi1
     & ,nuEdgecomp
     & ,div
     & ,idivlo0,idivlo1
     & ,idivhi0,idivhi1
     & ,ndivcomp
     & ,igridIntlo0,igridIntlo1
     & ,igridInthi0,igridInthi1
     & ,dx
     & ,idir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nuEdgecomp
      integer iuEdgelo0,iuEdgelo1
      integer iuEdgehi0,iuEdgehi1
      REAL*8 uEdge(
     & iuEdgelo0:iuEdgehi0,
     & iuEdgelo1:iuEdgehi1,
     & 0:nuEdgecomp-1)
      integer ndivcomp
      integer idivlo0,idivlo1
      integer idivhi0,idivhi1
      REAL*8 div(
     & idivlo0:idivhi0,
     & idivlo1:idivhi1,
     & 0:ndivcomp-1)
      integer igridIntlo0,igridIntlo1
      integer igridInthi0,igridInthi1
      REAL*8 dx
      integer idir
      integer i0,i1
      integer c2fLo0,c2fLo1
      integer c2fHi0,c2fHi1
      integer comp
      REAL*8 one_on_dx
      c2fLo0= 0*CHF_ID(0, idir)
      c2fLo1= 0*CHF_ID(1, idir)
      c2fHi0= 1*CHF_ID(0, idir)
      c2fHi1= 1*CHF_ID(1, idir)
      one_on_dx = (1.0d0)/dx
      do comp = 0, ndivcomp-1
      do i1 = igridIntlo1,igridInthi1
      do i0 = igridIntlo0,igridInthi0
            div(i0,i1, comp) = div(i0,i1, comp)
     & + one_on_dx *
     & ( uEdge(i0 +c2fHi0,i1 +c2fHi1, comp)
     & - uEdge(i0 +c2fLo0,i1 +c2fLo1, comp) )
      enddo
      enddo
      enddo
      return
      end