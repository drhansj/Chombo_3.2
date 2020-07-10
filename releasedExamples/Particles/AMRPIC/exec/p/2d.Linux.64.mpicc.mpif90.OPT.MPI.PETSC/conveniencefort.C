#include "REAL.H"
#include "SPACE.H"
#include "CONSTANTS.H"

        subroutine INTERPOLATEINTIME(
     &           phi
     &           ,iphilo0,iphilo1
     &           ,iphihi0,iphihi1
     &           ,nphicomp
     &           ,phiNew
     &           ,iphiNewlo0,iphiNewlo1
     &           ,iphiNewhi0,iphiNewhi1
     &           ,nphiNewcomp
     &           ,phiOld
     &           ,iphiOldlo0,iphiOldlo1
     &           ,iphiOldhi0,iphiOldhi1
     &           ,nphiOldcomp
     &           ,alpha
     &           ,srcComp
     &           ,dstComp
     &           ,sizeComp
     &           ,iboxlo0,iboxlo1
     &           ,iboxhi0,iboxhi1
     &           )

      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL_T phi(
     &           iphilo0:iphihi0,
     &           iphilo1:iphihi1,
     &           0:nphicomp-1)
      integer nphiNewcomp
      integer iphiNewlo0,iphiNewlo1
      integer iphiNewhi0,iphiNewhi1
      REAL_T phiNew(
     &           iphiNewlo0:iphiNewhi0,
     &           iphiNewlo1:iphiNewhi1,
     &           0:nphiNewcomp-1)
      integer nphiOldcomp
      integer iphiOldlo0,iphiOldlo1
      integer iphiOldhi0,iphiOldhi1
      REAL_T phiOld(
     &           iphiOldlo0:iphiOldhi0,
     &           iphiOldlo1:iphiOldhi1,
     &           0:nphiOldcomp-1)
      REAL_T alpha
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

          phi(i,j,id) =    alpha   *phiNew(i,j,is)+
     &                            (one-alpha)*phiOld(i,j,is)
        
      enddo
      enddo
      enddo
        return
        end
