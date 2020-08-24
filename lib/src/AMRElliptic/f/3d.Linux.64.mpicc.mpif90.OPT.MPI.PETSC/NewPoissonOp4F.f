# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NewPoissonOp4F.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NewPoissonOp4F.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/REAL.H" 1
# 2 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NewPoissonOp4F.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BoxTools/SPACE.H" 1
# 22 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CH_assert.H" 1
# 18 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CH_assert.H" 2
# 59 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CH_assert.H" 2
# 23 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BoxTools/SPACE.H" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/NamespaceHeader.H" 1
# 25 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BoxTools/SPACE.H" 2
# 66 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/NamespaceFooter.H" 1
# 67 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BoxTools/SPACE.H" 2
# 3 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NewPoissonOp4F.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NewPoissonOp4F.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/NewPoissonOp4F.C" 2
      subroutine OPERATORLAP4(
     & lofphi
     & ,ilofphilo0,ilofphilo1,ilofphilo2
     & ,ilofphihi0,ilofphihi1,ilofphihi2
     & ,nlofphicomp
     & ,phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,iregionlo0,iregionlo1,iregionlo2
     & ,iregionhi0,iregionhi1,iregionhi2
     & ,dx
     & ,alpha
     & ,beta
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nlofphicomp
      integer ilofphilo0,ilofphilo1,ilofphilo2
      integer ilofphihi0,ilofphihi1,ilofphihi2
      REAL*8 lofphi(
     & ilofphilo0:ilofphihi0,
     & ilofphilo1:ilofphihi1,
     & ilofphilo2:ilofphihi2,
     & 0:nlofphicomp-1)
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer iregionlo0,iregionlo1,iregionlo2
      integer iregionhi0,iregionhi1,iregionhi2
      REAL*8 dx
      REAL*8 alpha
      REAL*8 beta
      REAL*8 dxinv, lap
      integer n,ncomp
      integer i,j,k
      ncomp = nphicomp
      if(ncomp .ne. nlofphicomp) then
         call MAYDAYERROR()
      endif
      dxinv = (1.0d0)/(dx*dx)
      do n = 0, ncomp-1
      do k = iregionlo2,iregionhi2
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
          lap = (
     & (16.0d0)*phi(i-1,j ,k ,n) - phi(i-2,j ,k ,n)
     & + (16.0d0)*phi(i+1,j ,k ,n) - phi(i+2,j ,k ,n)
     & + (16.0d0)*phi(i ,j-1,k ,n) - phi(i ,j-2,k ,n)
     & + (16.0d0)*phi(i ,j+1,k ,n) - phi(i ,j+2,k ,n)
     & + (16.0d0)*phi(i ,j ,k-1,n) - phi(i ,j ,k-2,n)
     & + (16.0d0)*phi(i ,j ,k+1,n) - phi(i ,j ,k+2,n)
     & -((30.0d0)*3)*phi(i,j,k,n) )
     & * (1.000d0 / 12.000d0) * dxinv
          lofphi(i,j,k,n) = alpha*phi(i,j,k,n)+beta*lap
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine OPERATORLAPRES4(
     & r
     & ,irlo0,irlo1,irlo2
     & ,irhi0,irhi1,irhi2
     & ,nrcomp
     & ,phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,rhs
     & ,irhslo0,irhslo1,irhslo2
     & ,irhshi0,irhshi1,irhshi2
     & ,nrhscomp
     & ,iregionlo0,iregionlo1,iregionlo2
     & ,iregionhi0,iregionhi1,iregionhi2
     & ,dx
     & ,alpha
     & ,beta
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nrcomp
      integer irlo0,irlo1,irlo2
      integer irhi0,irhi1,irhi2
      REAL*8 r(
     & irlo0:irhi0,
     & irlo1:irhi1,
     & irlo2:irhi2,
     & 0:nrcomp-1)
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer nrhscomp
      integer irhslo0,irhslo1,irhslo2
      integer irhshi0,irhshi1,irhshi2
      REAL*8 rhs(
     & irhslo0:irhshi0,
     & irhslo1:irhshi1,
     & irhslo2:irhshi2,
     & 0:nrhscomp-1)
      integer iregionlo0,iregionlo1,iregionlo2
      integer iregionhi0,iregionhi1,iregionhi2
      REAL*8 dx
      REAL*8 alpha
      REAL*8 beta
      REAL*8 dxinv, lap, lhs
      integer n,ncomp
      integer i,j,k
      ncomp = nphicomp
      dxinv = (1.0d0)/(dx*dx)
      do n = 0, ncomp-1
      do k = iregionlo2,iregionhi2
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
          lap = (
     & (16.0d0)*phi(i-1,j ,k ,n) - phi(i-2,j ,k ,n)
     & + (16.0d0)*phi(i+1,j ,k ,n) - phi(i+2,j ,k ,n)
     & + (16.0d0)*phi(i ,j-1,k ,n) - phi(i ,j-2,k ,n)
     & + (16.0d0)*phi(i ,j+1,k ,n) - phi(i ,j+2,k ,n)
     & + (16.0d0)*phi(i ,j ,k-1,n) - phi(i ,j ,k-2,n)
     & + (16.0d0)*phi(i ,j ,k+1,n) - phi(i ,j ,k+2,n)
     & -((30.0d0)*3)*phi(i,j,k,n) )
     & * (1.000d0 / 12.000d0) * dxinv
          lhs = alpha*phi(i,j,k,n) + beta*lap
          r(i,j,k,n) = rhs(i,j,k,n) - lhs
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine RESTRICTRES4(
     & res
     & ,ireslo0,ireslo1,ireslo2
     & ,ireshi0,ireshi1,ireshi2
     & ,nrescomp
     & ,phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,rhs
     & ,irhslo0,irhslo1,irhslo2
     & ,irhshi0,irhshi1,irhshi2
     & ,nrhscomp
     & ,alpha
     & ,beta
     & ,iregionlo0,iregionlo1,iregionlo2
     & ,iregionhi0,iregionhi1,iregionhi2
     & ,dx
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nrescomp
      integer ireslo0,ireslo1,ireslo2
      integer ireshi0,ireshi1,ireshi2
      REAL*8 res(
     & ireslo0:ireshi0,
     & ireslo1:ireshi1,
     & ireslo2:ireshi2,
     & 0:nrescomp-1)
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer nrhscomp
      integer irhslo0,irhslo1,irhslo2
      integer irhshi0,irhshi1,irhshi2
      REAL*8 rhs(
     & irhslo0:irhshi0,
     & irhslo1:irhshi1,
     & irhslo2:irhshi2,
     & 0:nrhscomp-1)
      REAL*8 alpha
      REAL*8 beta
      integer iregionlo0,iregionlo1,iregionlo2
      integer iregionhi0,iregionhi1,iregionhi2
      REAL*8 dx
      REAL*8 denom,dxinv,lofphi,lap
      integer n,ncomp
      integer i,j,k
      integer ii,jj,kk
      ncomp = nphicomp
      dxinv = (1.0d0) / (dx*dx)
      denom = 2 *2 *2
      do n = 0, ncomp-1
      do k = iregionlo2,iregionhi2
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
          ii = i/2
          jj = j/2
          kk = k/2
          lap = (
     & (16.0d0)*phi(i-1,j ,k ,n) - phi(i-2,j ,k ,n)
     & + (16.0d0)*phi(i+1,j ,k ,n) - phi(i+2,j ,k ,n)
     & + (16.0d0)*phi(i ,j-1,k ,n) - phi(i ,j-2,k ,n)
     & + (16.0d0)*phi(i ,j+1,k ,n) - phi(i ,j+2,k ,n)
     & + (16.0d0)*phi(i ,j ,k-1,n) - phi(i ,j ,k-2,n)
     & + (16.0d0)*phi(i ,j ,k+1,n) - phi(i ,j ,k+2,n)
     & -((30.0d0)*3)*phi(i,j,k,n) )
     & * (1.000d0 / 12.000d0) * dxinv
          lofphi = alpha*phi(i,j,k,n) + beta*lap
          res(ii,jj,kk,n) = res(ii,jj,kk,n)
     & + (rhs(i,j,k,n) - lofphi) / denom
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine GSRBLAPLACIAN4(
     & phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,rhs
     & ,irhslo0,irhslo1,irhslo2
     & ,irhshi0,irhshi1,irhshi2
     & ,nrhscomp
     & ,iregionlo0,iregionlo1,iregionlo2
     & ,iregionhi0,iregionhi1,iregionhi2
     & ,dx
     & ,tmp
     & ,itmplo0,itmplo1,itmplo2
     & ,itmphi0,itmphi1,itmphi2
     & ,ntmpcomp
     & ,redBlack
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer nrhscomp
      integer irhslo0,irhslo1,irhslo2
      integer irhshi0,irhshi1,irhshi2
      REAL*8 rhs(
     & irhslo0:irhshi0,
     & irhslo1:irhshi1,
     & irhslo2:irhshi2,
     & 0:nrhscomp-1)
      integer iregionlo0,iregionlo1,iregionlo2
      integer iregionhi0,iregionhi1,iregionhi2
      REAL*8 dx
      integer ntmpcomp
      integer itmplo0,itmplo1,itmplo2
      integer itmphi0,itmphi1,itmphi2
      REAL*8 tmp(
     & itmplo0:itmphi0,
     & itmplo1:itmphi1,
     & itmplo2:itmphi2,
     & 0:ntmpcomp-1)
      integer redBlack
      REAL*8 dx2t, thD
      integer i,j,k
      integer n,ncomp,indtot,imin,imax,red,black
      red = 0
      black = 1
      dx2t = (12.0d0)*dx*dx
      thD = (1.000d0 / 30.000d0)/3
      ncomp = nphicomp
      if(ncomp .ne. nrhscomp) then
         call MAYDAYERROR()
      endif
      do n = 0, ncomp - 1
         if (redBlack .eq. red) then
        do k=iregionlo2, iregionhi2
          do j=iregionlo1, iregionhi1
            imin = iregionlo0
            indtot = imin + j + k
            imin = imin + abs(mod(indtot+red, 2))
            imax = iregionhi0
            do i = imin, imax, 2
               tmp(i,j,k,n) = thD*(
     & (16.0d0)*phi(i+1,j,k,n) - phi(i+2,j,k,n)
     & + (16.0d0)*phi(i-1,j,k,n) - phi(i-2,j,k,n)
     & + (16.0d0)*phi(i,j+1,k,n) - phi(i,j+2,k,n)
     & + (16.0d0)*phi(i,j-1,k,n) - phi(i,j-2,k,n)
     & + (16.0d0)*phi(i,j,k+1,n) - phi(i,j,k+2,n)
     & + (16.0d0)*phi(i,j,k-1,n) - phi(i,j,k-2,n)
     & - dx2t*rhs(i,j,k,n) )
            enddo
          enddo
        enddo
        else if (redBlack .eq. black) then
        do k=iregionlo2, iregionhi2
          do j=iregionlo1, iregionhi1
            imin = iregionlo0
            indtot = imin + j + k
            imin = imin + abs(mod(indtot+black, 2))
            imax = iregionhi0
            do i = imin, imax, 2
               phi(i,j,k,n) = thD*(
     & (16.0d0)*tmp(i+1,j,k,n) - tmp(i+2,j,k,n)
     & + (16.0d0)*tmp(i-1,j,k,n) - tmp(i-2,j,k,n)
     & + (16.0d0)*tmp(i,j+1,k,n) - tmp(i,j+2,k,n)
     & + (16.0d0)*tmp(i,j-1,k,n) - tmp(i,j-2,k,n)
     & + (16.0d0)*tmp(i,j,k+1,n) - tmp(i,j,k+2,n)
     & + (16.0d0)*tmp(i,j,k-1,n) - tmp(i,j,k-2,n)
     & - dx2t*rhs(i,j,k,n) )
            enddo
          enddo
        enddo
        do k=iregionlo2, iregionhi2
          do j=iregionlo1, iregionhi1
            imin = iregionlo0
            indtot = imin + j + k
            imin = imin + abs(mod(indtot+red, 2))
            imax = iregionhi0
            do i = imin, imax, 2
               phi(i,j,k,n) = tmp(i,j,k,n)
            enddo
          enddo
        enddo
        else
           call MAYDAYERROR()
        end if
      enddo
      return
      end
      subroutine SORLAPLACIAN4(
     & phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,rhs
     & ,irhslo0,irhslo1,irhslo2
     & ,irhshi0,irhshi1,irhshi2
     & ,nrhscomp
     & ,iregionlo0,iregionlo1,iregionlo2
     & ,iregionhi0,iregionhi1,iregionhi2
     & ,dx
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer nrhscomp
      integer irhslo0,irhslo1,irhslo2
      integer irhshi0,irhshi1,irhshi2
      REAL*8 rhs(
     & irhslo0:irhshi0,
     & irhslo1:irhshi1,
     & irhslo2:irhshi2,
     & 0:nrhscomp-1)
      integer iregionlo0,iregionlo1,iregionlo2
      integer iregionhi0,iregionhi1,iregionhi2
      REAL*8 dx
      REAL*8 dx2t, thD, tmp, omega
      integer i,j,k
      integer n,ncomp
      dx2t = (12.0d0)*dx*dx
      thD = (1.000d0 / 30.000d0)/3
      omega = 0.47
      ncomp = nphicomp
      if(ncomp .ne. nrhscomp) then
         call MAYDAYERROR()
      endif
      do n = 0, ncomp - 1
      do k = iregionlo2,iregionhi2
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
         tmp = thD*(
     & (16.0d0)*phi(i+1,j,k,n) - phi(i+2,j,k,n)
     & + (16.0d0)*phi(i-1,j,k,n) - phi(i-2,j,k,n)
     & + (16.0d0)*phi(i,j+1,k,n) - phi(i,j+2,k,n)
     & + (16.0d0)*phi(i,j-1,k,n) - phi(i,j-2,k,n)
     & + (16.0d0)*phi(i,j,k+1,n) - phi(i,j,k+2,n)
     & + (16.0d0)*phi(i,j,k-1,n) - phi(i,j,k-2,n)
     & - dx2t*rhs(i,j,k,n) )
         phi(i,j,k,n) = omega*tmp
     & + ((1.0d0)-omega)*phi(i,j,k,n)
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine GSRBHELMHOLTZ4(
     & phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,rhs
     & ,irhslo0,irhslo1,irhslo2
     & ,irhshi0,irhshi1,irhshi2
     & ,nrhscomp
     & ,iregionlo0,iregionlo1,iregionlo2
     & ,iregionhi0,iregionhi1,iregionhi2
     & ,dx
     & ,tmp
     & ,itmplo0,itmplo1,itmplo2
     & ,itmphi0,itmphi1,itmphi2
     & ,ntmpcomp
     & ,alpha
     & ,beta
     & ,redBlack
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer nrhscomp
      integer irhslo0,irhslo1,irhslo2
      integer irhshi0,irhshi1,irhshi2
      REAL*8 rhs(
     & irhslo0:irhshi0,
     & irhslo1:irhshi1,
     & irhslo2:irhshi2,
     & 0:nrhscomp-1)
      integer iregionlo0,iregionlo1,iregionlo2
      integer iregionhi0,iregionhi1,iregionhi2
      REAL*8 dx
      integer ntmpcomp
      integer itmplo0,itmplo1,itmplo2
      integer itmphi0,itmphi1,itmphi2
      REAL*8 tmp(
     & itmplo0:itmphi0,
     & itmplo1:itmphi1,
     & itmplo2:itmphi2,
     & 0:ntmpcomp-1)
      REAL*8 alpha
      REAL*8 beta
      integer redBlack
      REAL*8 dx2t, lambda, lap, dxinv, helm
      integer i,j,k
      integer n,ncomp,indtot,imin,imax,red,black
      red = 0
      black = 1
      dx2t = (12.0d0)*dx*dx
      dxinv = (1.0d0)/(dx*dx)
      lambda = (1.0d0)/(alpha - beta*(30.0d0)*3*(1.000d0 / 12.000d0)*dxi
     &nv)
      lambda = lambda*(0.60)
      ncomp = nphicomp
      if(ncomp .ne. nrhscomp) then
         call MAYDAYERROR()
      endif
      do n = 0, ncomp - 1
         if (redBlack .eq. red) then
        do k=iregionlo2, iregionhi2
          do j=iregionlo1, iregionhi1
            imin = iregionlo0
            indtot = imin + j + k
            imin = imin + abs(mod(indtot+red, 2))
            imax = iregionhi0
            do i = imin, imax, 2
          lap = (
     & (16.0d0)*phi(i-1,j ,k ,n) - phi(i-2,j ,k ,n)
     & + (16.0d0)*phi(i+1,j ,k ,n) - phi(i+2,j ,k ,n)
     & + (16.0d0)*phi(i ,j-1,k ,n) - phi(i ,j-2,k ,n)
     & + (16.0d0)*phi(i ,j+1,k ,n) - phi(i ,j+2,k ,n)
     & + (16.0d0)*phi(i ,j ,k-1,n) - phi(i ,j ,k-2,n)
     & + (16.0d0)*phi(i ,j ,k+1,n) - phi(i ,j ,k+2,n)
     & -((30.0d0)*3)*phi(i,j,k,n) )
     & * (1.000d0 / 12.000d0) * dxinv
          helm = alpha*phi(i,j,k,n) + beta*lap
          tmp(i,j,k,n) = phi(i,j,k,n) +
     & lambda*( rhs(i,j,k,n) - helm )
            enddo
          enddo
        enddo
        else if (redBlack .eq. black) then
        do k=iregionlo2, iregionhi2
          do j=iregionlo1, iregionhi1
            imin = iregionlo0
            indtot = imin + j + k
            imin = imin + abs(mod(indtot+black, 2))
            imax = iregionhi0
            do i = imin, imax, 2
               lap = (
     & (16.0d0)*tmp(i+1,j,k,n) - tmp(i+2,j,k,n)
     & + (16.0d0)*tmp(i-1,j,k,n) - tmp(i-2,j,k,n)
     & + (16.0d0)*tmp(i,j+1,k,n) - tmp(i,j+2,k,n)
     & + (16.0d0)*tmp(i,j-1,k,n) - tmp(i,j-2,k,n)
     & + (16.0d0)*tmp(i,j,k+1,n) - tmp(i,j,k+2,n)
     & + (16.0d0)*tmp(i,j,k-1,n) - tmp(i,j,k-2,n)
     & -((30.0d0)*3)*tmp(i,j,k,n) )
     & * (1.000d0 / 12.000d0) * dxinv
               helm = alpha*tmp(i,j,k,n) + beta*lap
               phi(i,j,k,n) = tmp(i,j,k,n) +
     & lambda*( rhs(i,j,k,n) - helm )
            enddo
          enddo
        enddo
        do k=iregionlo2, iregionhi2
          do j=iregionlo1, iregionhi1
            imin = iregionlo0
            indtot = imin + j + k
            imin = imin + abs(mod(indtot+red, 2))
            imax = iregionhi0
            do i = imin, imax, 2
               phi(i,j,k,n) = tmp(i,j,k,n)
            enddo
          enddo
        enddo
        else
           call MAYDAYERROR()
        end if
      enddo
      return
      end
      subroutine NEWGETFLUX4(
     & flux
     & ,ifluxlo0,ifluxlo1,ifluxlo2
     & ,ifluxhi0,ifluxhi1,ifluxhi2
     & ,nfluxcomp
     & ,phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & ,beta_dx
     & ,a_idir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nfluxcomp
      integer ifluxlo0,ifluxlo1,ifluxlo2
      integer ifluxhi0,ifluxhi1,ifluxhi2
      REAL*8 flux(
     & ifluxlo0:ifluxhi0,
     & ifluxlo1:ifluxhi1,
     & ifluxlo2:ifluxhi2,
     & 0:nfluxcomp-1)
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      REAL*8 beta_dx
      integer a_idir
      INTEGER ncomp,n
      integer ii, jj, kk
      integer i , j , k
      ncomp = nphicomp
      ii = CHF_ID(a_idir, 0)
      jj = CHF_ID(a_idir, 1)
      kk = CHF_ID(a_idir, 2)
      do n = 0, ncomp-1
      do k = iboxlo2,iboxhi2
      do j = iboxlo1,iboxhi1
      do i = iboxlo0,iboxhi0
          flux(i,j,k,n) = beta_dx * (1.000d0 / 12.000d0) *
     & ( (15.0d0)*phi(i,j,k,n)
     & + phi(i-2*ii,j-2*jj,k-2*kk,n)
     & - phi(i+ii,j+jj,k+kk,n)
     & - (15.0d0)*phi(i-ii,j-jj,k-kk,n) )
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine PROLONGLINEAR(
     & phi
     & ,iphilo0,iphilo1,iphilo2
     & ,iphihi0,iphihi1,iphihi2
     & ,nphicomp
     & ,coarse
     & ,icoarselo0,icoarselo1,icoarselo2
     & ,icoarsehi0,icoarsehi1,icoarsehi2
     & ,ncoarsecomp
     & ,ifineBoxlo0,ifineBoxlo1,ifineBoxlo2
     & ,ifineBoxhi0,ifineBoxhi1,ifineBoxhi2
     & ,icrseBoxlo0,icrseBoxlo1,icrseBoxlo2
     & ,icrseBoxhi0,icrseBoxhi1,icrseBoxhi2
     & ,r
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nphicomp
      integer iphilo0,iphilo1,iphilo2
      integer iphihi0,iphihi1,iphihi2
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & iphilo2:iphihi2,
     & 0:nphicomp-1)
      integer ncoarsecomp
      integer icoarselo0,icoarselo1,icoarselo2
      integer icoarsehi0,icoarsehi1,icoarsehi2
      REAL*8 coarse(
     & icoarselo0:icoarsehi0,
     & icoarselo1:icoarsehi1,
     & icoarselo2:icoarsehi2,
     & 0:ncoarsecomp-1)
      integer ifineBoxlo0,ifineBoxlo1,ifineBoxlo2
      integer ifineBoxhi0,ifineBoxhi1,ifineBoxhi2
      integer icrseBoxlo0,icrseBoxlo1,icrseBoxlo2
      integer icrseBoxhi0,icrseBoxhi1,icrseBoxhi2
      integer r
      INTEGER ncomp, n
      integer i ,j ,k
      integer ic,jc,kc
      ncomp = nphicomp
      do n = 0, ncomp-1
      do k = ifineBoxlo2,ifineBoxhi2
      do j = ifineBoxlo1,ifineBoxhi1
      do i = ifineBoxlo0,ifineBoxhi0
           ic = i/r
           jc = j/r
           kc = k/r
           phi(i,j,k,n) = phi(i,j,k,n) +
     & coarse(ic,jc,kc,n)
           if (ic.ne.icrseBoxhi0 .and.
     & (ic*r.lt.i .or. ic.eq.icrseBoxlo0)) then
              phi(i,j,k,n) = phi(i,j,k,n) +
     & (coarse(ic+1,jc,kc,n)
     & - coarse(ic,jc,kc,n))/r*(i+(0.500d0)-ic*r-(0.500d0)*r)
           else
              phi(i,j,k,n) = phi(i,j,k,n) +
     & (- coarse(ic-1,jc,kc,n)
     & + coarse(ic,jc,kc,n))/r*(i+(0.500d0)-ic*r-(0.500d0)*r)
           endif
           if (jc.ne.icrseBoxhi1 .and.
     & (jc*r.lt.j .or. jc.eq.icrseBoxlo1)) then
              phi(i,j,k,n) = phi(i,j,k,n) +
     & (coarse(ic,jc+1,kc,n)
     & - coarse(ic,jc,kc,n))/r*(j+(0.500d0)-jc*r-(0.500d0)*r)
           else
              phi(i,j,k,n) = phi(i,j,k,n) +
     & (- coarse(ic,jc-1,kc,n)
     & + coarse(ic,jc,kc,n))/r*(j+(0.500d0)-jc*r-(0.500d0)*r)
           endif
           if (kc.ne.icrseBoxhi2 .and.
     & (kc*r.lt.k .or. kc.eq.icrseBoxlo2)) then
              phi(i,j,k,n) = phi(i,j,k,n) +
     & (coarse(ic,jc,kc+1,n)
     & - coarse(ic,jc,kc,n))/r*(k+(0.500d0)-kc*r-(0.500d0)*r)
           else
              phi(i,j,k,n) = phi(i,j,k,n) +
     & (- coarse(ic,jc,kc-1,n)
     & + coarse(ic,jc,kc,n))/r*(k+(0.500d0)-kc*r-(0.500d0)*r)
           endif
      enddo
      enddo
      enddo
      enddo
      return
      end
