# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeAverageF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeAverageF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeAverageF.C" 2
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
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeAverageF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeAverageF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTools/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NodeAverageF.C" 2
      subroutine NODEAVERAGE(
     & coarse
     & ,icoarselo0,icoarselo1
     & ,icoarsehi0,icoarsehi1
     & ,ncoarsecomp
     & ,fine
     & ,ifinelo0,ifinelo1
     & ,ifinehi0,ifinehi1
     & ,nfinecomp
     & ,iblo0,iblo1
     & ,ibhi0,ibhi1
     & ,ref_ratio
     & ,weight
     & ,iweightlo0,iweightlo1
     & ,iweighthi0,iweighthi1
     & ,nweightcomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer ncoarsecomp
      integer icoarselo0,icoarselo1
      integer icoarsehi0,icoarsehi1
      REAL*8 coarse(
     & icoarselo0:icoarsehi0,
     & icoarselo1:icoarsehi1,
     & 0:ncoarsecomp-1)
      integer nfinecomp
      integer ifinelo0,ifinelo1
      integer ifinehi0,ifinehi1
      REAL*8 fine(
     & ifinelo0:ifinehi0,
     & ifinelo1:ifinehi1,
     & 0:nfinecomp-1)
      integer iblo0,iblo1
      integer ibhi0,ibhi1
      integer ref_ratio
      integer nweightcomp
      integer iweightlo0,iweightlo1
      integer iweighthi0,iweighthi1
      REAL*8 weight(
     & iweightlo0:iweighthi0,
     & iweightlo1:iweighthi1,
     & 0:nweightcomp-1)
      integer var
      integer icrse0,icrse1
      integer ifine0,ifine1
      integer ii0,ii1
      REAL*8 csum
      do var = 0, ncoarsecomp - 1
      do icrse1 = iblo1,ibhi1
      do icrse0 = iblo0,ibhi0
            csum = 0
      do ii1 = iweightlo1,iweighthi1
      do ii0 = iweightlo0,iweighthi0
               ifine0 = icrse0*ref_ratio + ii0
               ifine1 = icrse1*ref_ratio + ii1
               csum = csum + weight( ii0,ii1, 0) *
     & fine( ifine0,ifine1, var )
      enddo
      enddo
            coarse( icrse0,icrse1, var ) = csum
      enddo
      enddo
      end do
      return
      end
      subroutine NODEAVERAGEPOINT(
     & coarse
     & ,icoarselo0,icoarselo1
     & ,icoarsehi0,icoarsehi1
     & ,ncoarsecomp
     & ,fine
     & ,ifinelo0,ifinelo1
     & ,ifinehi0,ifinehi1
     & ,nfinecomp
     & ,pcrse
     & ,ref_ratio
     & ,weight
     & ,iweightlo0,iweightlo1
     & ,iweighthi0,iweighthi1
     & ,nweightcomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer ncoarsecomp
      integer icoarselo0,icoarselo1
      integer icoarsehi0,icoarsehi1
      REAL*8 coarse(
     & icoarselo0:icoarsehi0,
     & icoarselo1:icoarsehi1,
     & 0:ncoarsecomp-1)
      integer nfinecomp
      integer ifinelo0,ifinelo1
      integer ifinehi0,ifinehi1
      REAL*8 fine(
     & ifinelo0:ifinehi0,
     & ifinelo1:ifinehi1,
     & 0:nfinecomp-1)
      integer pcrse(0:1)
      integer ref_ratio
      integer nweightcomp
      integer iweightlo0,iweightlo1
      integer iweighthi0,iweighthi1
      REAL*8 weight(
     & iweightlo0:iweighthi0,
     & iweightlo1:iweighthi1,
     & 0:nweightcomp-1)
      integer var
      integer ifine0,ifine1
      integer ii0,ii1
      REAL*8 csum, weightpt, finept
      do var = 0, ncoarsecomp - 1
         csum = 0
      do ii1 = iweightlo1,iweighthi1
      do ii0 = iweightlo0,iweighthi0
            ifine0 = pcrse(0)*ref_ratio + ii0
            ifine1 = pcrse(1)*ref_ratio + ii1
            weightpt = weight( ii0,ii1, 0)
            finept = fine( ifine0,ifine1, var )
            csum = csum + weightpt*finept
      enddo
      enddo
         coarse(pcrse(0),pcrse(1), var ) = csum
      end do
      return
      end
      subroutine NODEAVERAGE_GETWEIGHTS(
     & weight
     & ,iweightlo0,iweightlo1
     & ,iweighthi0,iweighthi1
     & ,nweightcomp
     & ,ref_ratio
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nweightcomp
      integer iweightlo0,iweightlo1
      integer iweighthi0,iweighthi1
      REAL*8 weight(
     & iweightlo0:iweighthi0,
     & iweightlo1:iweighthi1,
     & 0:nweightcomp-1)
      integer ref_ratio
      integer ext, nxtrm
      integer ii0,ii1
      REAL*8 ref_scale
      ext = ref_ratio / 2
      ref_scale = (1.0d0) / (ref_ratio**2)
      do ii1 = iweightlo1,iweighthi1
      do ii0 = iweightlo0,iweighthi0
         nxtrm = 0
         if (iabs(ii0) .eq. ext) nxtrm = nxtrm + 1
         if (iabs(ii1) .eq. ext) nxtrm = nxtrm + 1
         weight( ii0,ii1, 0) = ref_scale * (0.500d0)**nxtrm
      enddo
      enddo
      return
      end
