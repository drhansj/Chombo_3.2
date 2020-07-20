# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeBCF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeBCF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeBCF.C" 2
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
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeBCF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeBCF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeBCF.C" 2
      subroutine FACENODEBC(
     & state
     & ,istatelo0,istatelo1
     & ,istatehi0,istatehi1
     & ,nstatecomp
     & ,neumfac
     & ,ineumfaclo0,ineumfaclo1
     & ,ineumfachi0,ineumfachi1
     & ,nneumfaccomp
     & ,dircfac
     & ,idircfaclo0,idircfaclo1
     & ,idircfachi0,idircfachi1
     & ,ndircfaccomp
     & ,inhmval
     & ,iinhmvallo0,iinhmvallo1
     & ,iinhmvalhi0,iinhmvalhi1
     & ,ninhmvalcomp
     & ,ifaceboxlo0,ifaceboxlo1
     & ,ifaceboxhi0,ifaceboxhi1
     & ,idir
     & ,side
     & ,dx
     & ,startcomp
     & ,endcomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nstatecomp
      integer istatelo0,istatelo1
      integer istatehi0,istatehi1
      REAL*8 state(
     & istatelo0:istatehi0,
     & istatelo1:istatehi1,
     & 0:nstatecomp-1)
      integer nneumfaccomp
      integer ineumfaclo0,ineumfaclo1
      integer ineumfachi0,ineumfachi1
      REAL*8 neumfac(
     & ineumfaclo0:ineumfachi0,
     & ineumfaclo1:ineumfachi1,
     & 0:nneumfaccomp-1)
      integer ndircfaccomp
      integer idircfaclo0,idircfaclo1
      integer idircfachi0,idircfachi1
      REAL*8 dircfac(
     & idircfaclo0:idircfachi0,
     & idircfaclo1:idircfachi1,
     & 0:ndircfaccomp-1)
      integer ninhmvalcomp
      integer iinhmvallo0,iinhmvallo1
      integer iinhmvalhi0,iinhmvalhi1
      REAL*8 inhmval(
     & iinhmvallo0:iinhmvalhi0,
     & iinhmvallo1:iinhmvalhi1,
     & 0:ninhmvalcomp-1)
      integer ifaceboxlo0,ifaceboxlo1
      integer ifaceboxhi0,ifaceboxhi1
      integer idir
      integer side
      REAL*8 dx
      integer startcomp
      integer endcomp
      REAL*8 nfac, dfac, ival, sval,denom,numer
      integer ncomp,nc
      integer i0,i1, ii0,ii1
      ncomp = nstatecomp
      if(ncomp .ne. nneumfaccomp) then
          call MAYDAY_ERROR()
      endif
      if(ncomp .ne. ndircfaccomp) then
          call MAYDAY_ERROR()
      endif
      if(ncomp .ne. ninhmvalcomp) then
          call MAYDAY_ERROR()
      endif
      if ((side .ne. -1) .and. (side .ne. 1)) then
          call MAYDAY_ERROR()
      endif
      ii0= side*CHF_ID(0, idir)
      ii1= side*CHF_ID(1, idir)
      do nc = startcomp, endcomp
      do i1 = ifaceboxlo1,ifaceboxhi1
      do i0 = ifaceboxlo0,ifaceboxhi0
              nfac = neumfac(i0,i1, nc)
              dfac = dircfac(i0,i1, nc)
              ival = inhmval(i0,i1, nc)
              sval = state(i0-ii0,i1-ii1, nc)
              denom = dfac + side*(nfac/dx)
              numer = ival + side*(nfac/dx)*sval
              if (abs(denom) .lt. 1.0e-9) then
                  call MAYDAY_ERROR()
              endif
              state(i0,i1, nc) = numer/denom
      enddo
      enddo
      enddo
      return
      end