# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/conveniencefort.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/conveniencefort.C"
# 1 "../../../../lib/src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/conveniencefort.C" 2
# 1 "../../../../lib/src/BoxTools/SPACE.H" 1
# 22 "../../../../lib/src/BoxTools/SPACE.H"
# 1 "../../../../lib/src/BaseTools/CH_assert.H" 1
# 18 "../../../../lib/src/BaseTools/CH_assert.H"
# 1 "../../../../lib/src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "../../../../lib/src/BaseTools/CH_assert.H" 2
# 59 "../../../../lib/src/BaseTools/CH_assert.H"
# 1 "../../../../lib/src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "../../../../lib/src/BaseTools/CH_assert.H" 2
# 23 "../../../../lib/src/BoxTools/SPACE.H" 2
# 1 "../../../../lib/src/BaseTools/NamespaceHeader.H" 1
# 25 "../../../../lib/src/BoxTools/SPACE.H" 2
# 66 "../../../../lib/src/BoxTools/SPACE.H"
# 1 "../../../../lib/src/BaseTools/NamespaceFooter.H" 1
# 67 "../../../../lib/src/BoxTools/SPACE.H" 2
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/conveniencefort.C" 2
# 1 "../../../../lib/src/BaseTools/CONSTANTS.H" 1
# 13 "../../../../lib/src/BaseTools/CONSTANTS.H"
# 1 "../../../../lib/src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "../../../../lib/src/BaseTools/CONSTANTS.H" 2
# 135 "../../../../lib/src/BaseTools/CONSTANTS.H"
# 1 "../../../../lib/src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "../../../../lib/src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/conveniencefort.C" 2
        subroutine INTERPOLATEINTIME(
     & phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,phiNew
     & ,iphiNewlo0,iphiNewlo1
     & ,iphiNewhi0,iphiNewhi1
     & ,nphiNewcomp
     & ,phiOld
     & ,iphiOldlo0,iphiOldlo1
     & ,iphiOldhi0,iphiOldhi1
     & ,nphiOldcomp
     & ,alpha
     & ,srcComp
     & ,dstComp
     & ,sizeComp
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer nphiNewcomp
      integer iphiNewlo0,iphiNewlo1
      integer iphiNewhi0,iphiNewhi1
      REAL*8 phiNew(
     & iphiNewlo0:iphiNewhi0,
     & iphiNewlo1:iphiNewhi1,
     & 0:nphiNewcomp-1)
      integer nphiOldcomp
      integer iphiOldlo0,iphiOldlo1
      integer iphiOldhi0,iphiOldhi1
      REAL*8 phiOld(
     & iphiOldlo0:iphiOldhi0,
     & iphiOldlo1:iphiOldhi1,
     & 0:nphiOldcomp-1)
      REAL*8 alpha
      integer srcComp
      integer dstComp
      integer sizeComp
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
        integer ic,id,is, i,j
      do ic = 0,sizeComp-1
        id = ic+dstComp
        is = ic+srcComp
      do j = iboxlo1,iboxhi1
      do i = iboxlo0,iboxhi0
          phi(i,j,id) = alpha *phiNew(i,j,is)+
     & ((1.0d0)-alpha)*phiOld(i,j,is)
      enddo
      enddo
      enddo
        return
        end
