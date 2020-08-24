# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/LevelFluxRegisterF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/LevelFluxRegisterF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/LevelFluxRegisterF.C" 2
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
# 3 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/LevelFluxRegisterF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/LevelFluxRegisterF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/LevelFluxRegisterF.C" 2
      subroutine INCREMENTFINE(
     & fine
     & ,ifinelo0,ifinelo1,ifinelo2
     & ,ifinehi0,ifinehi1,ifinehi2
     & ,nfinecomp
     & ,cFine
     & ,icFinelo0,icFinelo1,icFinelo2
     & ,icFinehi0,icFinehi1,icFinehi2
     & ,ncFinecomp
     & ,ifineBoxlo0,ifineBoxlo1,ifineBoxlo2
     & ,ifineBoxhi0,ifineBoxhi1,ifineBoxhi2
     & ,nRef
     & ,scale
     & ,srcStart
     & ,destStart
     & ,ncomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nfinecomp
      integer ifinelo0,ifinelo1,ifinelo2
      integer ifinehi0,ifinehi1,ifinehi2
      REAL*8 fine(
     & ifinelo0:ifinehi0,
     & ifinelo1:ifinehi1,
     & ifinelo2:ifinehi2,
     & 0:nfinecomp-1)
      integer ncFinecomp
      integer icFinelo0,icFinelo1,icFinelo2
      integer icFinehi0,icFinehi1,icFinehi2
      REAL*8 cFine(
     & icFinelo0:icFinehi0,
     & icFinelo1:icFinehi1,
     & icFinelo2:icFinehi2,
     & 0:ncFinecomp-1)
      integer ifineBoxlo0,ifineBoxlo1,ifineBoxlo2
      integer ifineBoxhi0,ifineBoxhi1,ifineBoxhi2
      integer nRef(0:2)
      REAL*8 scale
      integer srcStart
      integer destStart
      integer ncomp
      integer i0,i1,i2
      integer ii0,ii1,ii2
      integer var, srcComp, destComp
      do var=0, ncomp-1
         srcComp = srcStart + var
         destComp = destStart + var
      do i2 = ifineBoxlo2,ifineBoxhi2
      do i1 = ifineBoxlo1,ifineBoxhi1
      do i0 = ifineBoxlo0,ifineBoxhi0
            ii0=i0/nRef(0)
            ii1=i1/nRef(1)
            ii2=i2/nRef(2)
            cFine(ii0,ii1,ii2,destComp) =
     & cFine(ii0,ii1,ii2, destComp) +
     & scale * fine(i0,i1,i2, srcComp)
      enddo
      enddo
      enddo
      enddo
      return
      end
