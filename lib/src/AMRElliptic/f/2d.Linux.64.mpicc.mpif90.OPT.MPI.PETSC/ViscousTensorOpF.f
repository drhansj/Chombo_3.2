# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ViscousTensorOpF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ViscousTensorOpF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ViscousTensorOpF.C" 2
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
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ViscousTensorOpF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ViscousTensorOpF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRElliptic/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ViscousTensorOpF.C" 2
      subroutine EXTRAPTOGHOSTVEL(
     & vel
     & ,ivello0,ivello1
     & ,ivelhi0,ivelhi1
     & ,nvelcomp
     & ,iloboxlo0,iloboxlo1
     & ,iloboxhi0,iloboxhi1
     & ,haslo
     & ,ihiboxlo0,ihiboxlo1
     & ,ihiboxhi0,ihiboxhi1
     & ,hashi
     & ,facedir
     & ,ncomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nvelcomp
      integer ivello0,ivello1
      integer ivelhi0,ivelhi1
      REAL*8 vel(
     & ivello0:ivelhi0,
     & ivello1:ivelhi1,
     & 0:nvelcomp-1)
      integer iloboxlo0,iloboxlo1
      integer iloboxhi0,iloboxhi1
      integer haslo
      integer ihiboxlo0,ihiboxlo1
      integer ihiboxhi0,ihiboxhi1
      integer hashi
      integer facedir
      integer ncomp
      integer ii,i,jj,j, icomp
      ii = chf_id(facedir, 0)
      jj = chf_id(facedir, 1)
      if(hashi.eq. 1) then
         do icomp = 0, ncomp-1
      do j = ihiboxlo1,ihiboxhi1
      do i = ihiboxlo0,ihiboxhi0
            vel(i,j,icomp) =
     $ 2*vel(i- ii,j- jj, icomp)
     $ - vel(i-2*ii,j-2*jj, icomp)
      enddo
      enddo
         enddo
      endif
      if(haslo .eq. 1) then
         do icomp = 0, ncomp-1
      do j = iloboxlo1,iloboxhi1
      do i = iloboxlo0,iloboxhi0
            vel(i,j,icomp) =
     $ 2*vel(i+ ii,j+ jj, icomp)
     $ - vel(i+2*ii,j+2*jj, icomp)
      enddo
      enddo
         enddo
      endif
      return
      end
      subroutine APPLYOPVTOPNOBCS(
     & lphfab
     & ,ilphfablo0,ilphfablo1
     & ,ilphfabhi0,ilphfabhi1
     & ,nlphfabcomp
     & ,phifab
     & ,iphifablo0,iphifablo1
     & ,iphifabhi0,iphifabhi1
     & ,nphifabcomp
     & ,acofab
     & ,iacofablo0,iacofablo1
     & ,iacofabhi0,iacofabhi1
     & ,eta0fab
     & ,ieta0fablo0,ieta0fablo1
     & ,ieta0fabhi0,ieta0fabhi1
     & ,eta1fab
     & ,ieta1fablo0,ieta1fablo1
     & ,ieta1fabhi0,ieta1fabhi1
     & ,eta2fab
     & ,ieta2fablo0,ieta2fablo1
     & ,ieta2fabhi0,ieta2fabhi1
     & ,lam0fab
     & ,ilam0fablo0,ilam0fablo1
     & ,ilam0fabhi0,ilam0fabhi1
     & ,lam1fab
     & ,ilam1fablo0,ilam1fablo1
     & ,ilam1fabhi0,ilam1fabhi1
     & ,lam2fab
     & ,ilam2fablo0,ilam2fablo1
     & ,ilam2fabhi0,ilam2fabhi1
     & ,dx
     & ,alpha
     & ,beta
     & ,iregionlo0,iregionlo1
     & ,iregionhi0,iregionhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nlphfabcomp
      integer ilphfablo0,ilphfablo1
      integer ilphfabhi0,ilphfabhi1
      REAL*8 lphfab(
     & ilphfablo0:ilphfabhi0,
     & ilphfablo1:ilphfabhi1,
     & 0:nlphfabcomp-1)
      integer nphifabcomp
      integer iphifablo0,iphifablo1
      integer iphifabhi0,iphifabhi1
      REAL*8 phifab(
     & iphifablo0:iphifabhi0,
     & iphifablo1:iphifabhi1,
     & 0:nphifabcomp-1)
      integer iacofablo0,iacofablo1
      integer iacofabhi0,iacofabhi1
      REAL*8 acofab(
     & iacofablo0:iacofabhi0,
     & iacofablo1:iacofabhi1)
      integer ieta0fablo0,ieta0fablo1
      integer ieta0fabhi0,ieta0fabhi1
      REAL*8 eta0fab(
     & ieta0fablo0:ieta0fabhi0,
     & ieta0fablo1:ieta0fabhi1)
      integer ieta1fablo0,ieta1fablo1
      integer ieta1fabhi0,ieta1fabhi1
      REAL*8 eta1fab(
     & ieta1fablo0:ieta1fabhi0,
     & ieta1fablo1:ieta1fabhi1)
      integer ieta2fablo0,ieta2fablo1
      integer ieta2fabhi0,ieta2fabhi1
      REAL*8 eta2fab(
     & ieta2fablo0:ieta2fabhi0,
     & ieta2fablo1:ieta2fabhi1)
      integer ilam0fablo0,ilam0fablo1
      integer ilam0fabhi0,ilam0fabhi1
      REAL*8 lam0fab(
     & ilam0fablo0:ilam0fabhi0,
     & ilam0fablo1:ilam0fabhi1)
      integer ilam1fablo0,ilam1fablo1
      integer ilam1fabhi0,ilam1fabhi1
      REAL*8 lam1fab(
     & ilam1fablo0:ilam1fabhi0,
     & ilam1fablo1:ilam1fabhi1)
      integer ilam2fablo0,ilam2fablo1
      integer ilam2fabhi0,ilam2fabhi1
      REAL*8 lam2fab(
     & ilam2fablo0:ilam2fabhi0,
     & ilam2fablo1:ilam2fabhi1)
      REAL*8 dx
      REAL*8 alpha
      REAL*8 beta
      integer iregionlo0,iregionlo1
      integer iregionhi0,iregionhi1
      REAL*8 divf(0:2 -1)
      REAL*8 aphi(0:2 -1)
      REAL*8 etaL(0:2 -1)
      REAL*8 etaH(0:2 -1)
      REAL*8 lamL(0:2 -1)
      REAL*8 lamH(0:2 -1)
      REAL*8 fluxL(0:2 -1,0:2 -1)
      REAL*8 fluxH(0:2 -1,0:2 -1)
      REAL*8 gphiL(0:2 -1,0:2 -1,0:2 -1)
      REAL*8 gphiH(0:2 -1,0:2 -1,0:2 -1)
      REAL*8 divuL(0:2 -1)
      REAL*8 divuH(0:2 -1)
      integer i,j, facedir, derivdir, veldir
      integer iif,jjf
      integer iid,jjd
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
      etaL(0) =eta0fab(i ,j )
      etaL(1) =eta1fab(i ,j )
      etaH(0) =eta0fab(i+1 ,j )
      etaH(1) =eta1fab(i ,j+1 )
      lamL(0) =lam0fab(i ,j )
      lamL(1) =lam1fab(i ,j )
      lamH(0) =lam0fab(i+1 ,j )
      lamH(1) =lam1fab(i ,j+1 )
      do facedir = 0, 2 -1
         iif = chf_id(facedir, 0)
         jjf = chf_id(facedir, 1)
         do derivdir = 0, 2 -1
            iid = chf_id(derivdir, 0)
            jjd = chf_id(derivdir, 1)
            do veldir = 0, 2 -1
               if(facedir .eq. derivdir) then
                  gphiH(veldir, derivdir ,facedir) = (phifab(i+iid,j+jjd
     &,veldir) - phifab(i ,j ,veldir))/dx
                  gphiL(veldir, derivdir ,facedir) = (phifab(i ,j ,veldi
     &r) - phifab(i-iid,j-jjd,veldir))/dx
               else
                  gphiH(veldir, derivdir ,facedir) = ((1.0d0)/((4.0d0)*d
     &x))*(
     $ phifab(i+iid+iif,j+jjd+jjf,veldir) - phifab(i-iid+iif,j-jjd+jjf,v
     &eldir) +
     $ phifab(i+iid ,j+jjd ,veldir) - phifab(i-iid ,j-jjd ,veldir) )
                  gphiL(veldir, derivdir ,facedir) = ((1.0d0)/((4.0d0)*d
     &x))*(
     $ phifab(i+iid-iif,j+jjd-jjf,veldir) - phifab(i-iid-iif,j-jjd-jjf,v
     &eldir) +
     $ phifab(i+iid ,j+jjd ,veldir) - phifab(i-iid ,j-jjd ,veldir) )
               endif
            enddo
         enddo
      enddo
      do facedir = 0, 2 -1
         divuL(facedir) = (0.0d0)
         divuH(facedir) = (0.0d0)
         do veldir = 0, 2 -1
            divuL(facedir)= divuL(facedir) + gphiL(veldir, veldir, faced
     &ir)
            divuH(facedir)= divuH(facedir) + gphiH(veldir, veldir, faced
     &ir)
         enddo
      enddo
      do facedir = 0, 2 -1
         do veldir = 0, 2 -1
            fluxL(veldir, facedir) = etaL(facedir)*(gphiL(facedir, veldi
     &r, facedir) + gphiL(veldir, facedir, facedir))
            fluxH(veldir, facedir) = etaH(facedir)*(gphiH(facedir, veldi
     &r, facedir) + gphiH(veldir, facedir, facedir))
            if(veldir .eq. facedir) then
               fluxL(veldir, facedir) = fluxL(veldir, facedir) + lamL(fa
     &cedir)*divuL(facedir)
               fluxH(veldir, facedir) = fluxH(veldir, facedir) + lamH(fa
     &cedir)*divuH(facedir)
            endif
         enddo
      enddo
      do veldir = 0, 2 -1
         divf(veldir) = (0.0d0)
         do facedir = 0, 2 -1
            divf(veldir) = divf(veldir)
     $ + (fluxH(veldir, facedir)-fluxL(veldir, facedir))/dx
         enddo
      enddo
      aphi(0) = acofab(i,j)*phifab(i,j, 0)
      aphi(1) = acofab(i,j)*phifab(i,j, 1)
      lphfab(i,j,0) = alpha*aphi(0) + beta*divf(0)
      lphfab(i,j,1) = alpha*aphi(1) + beta*divf(1)
      enddo
      enddo
      ch_flops=ch_flops+(iregionhi0- iregionlo0+1)*(iregionhi1- iregionl
     &o1+1)*(4 + 6*2 + 12*(2*2))
      return
      end
      subroutine GETFLUXVTOPNOBCS(
     & flux
     & ,ifluxlo0,ifluxlo1
     & ,ifluxhi0,ifluxhi1
     & ,nfluxcomp
     & ,phifab
     & ,iphifablo0,iphifablo1
     & ,iphifabhi0,iphifabhi1
     & ,nphifabcomp
     & ,etafab
     & ,ietafablo0,ietafablo1
     & ,ietafabhi0,ietafabhi1
     & ,lamfab
     & ,ilamfablo0,ilamfablo1
     & ,ilamfabhi0,ilamfabhi1
     & ,dx
     & ,facedir
     & ,beta
     & ,ifaceboxlo0,ifaceboxlo1
     & ,ifaceboxhi0,ifaceboxhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nfluxcomp
      integer ifluxlo0,ifluxlo1
      integer ifluxhi0,ifluxhi1
      REAL*8 flux(
     & ifluxlo0:ifluxhi0,
     & ifluxlo1:ifluxhi1,
     & 0:nfluxcomp-1)
      integer nphifabcomp
      integer iphifablo0,iphifablo1
      integer iphifabhi0,iphifabhi1
      REAL*8 phifab(
     & iphifablo0:iphifabhi0,
     & iphifablo1:iphifabhi1,
     & 0:nphifabcomp-1)
      integer ietafablo0,ietafablo1
      integer ietafabhi0,ietafabhi1
      REAL*8 etafab(
     & ietafablo0:ietafabhi0,
     & ietafablo1:ietafabhi1)
      integer ilamfablo0,ilamfablo1
      integer ilamfabhi0,ilamfabhi1
      REAL*8 lamfab(
     & ilamfablo0:ilamfabhi0,
     & ilamfablo1:ilamfabhi1)
      REAL*8 dx
      integer facedir
      REAL*8 beta
      integer ifaceboxlo0,ifaceboxlo1
      integer ifaceboxhi0,ifaceboxhi1
      REAL*8 gphi(0:2 -1,0:2 -1)
      REAL*8 divu, eta, lam, fluxpt
      integer i,j , derivdir, veldir
      integer iif,jjf
      integer iid,jjd
      do j = ifaceboxlo1,ifaceboxhi1
      do i = ifaceboxlo0,ifaceboxhi0
      eta = etafab(i ,j );
      lam = lamfab(i ,j );
      iif = chf_id(facedir, 0)
      jjf = chf_id(facedir, 1)
      do derivdir = 0, 2 -1
         iid = chf_id(derivdir, 0)
         jjd = chf_id(derivdir, 1)
         do veldir = 0, 2 -1
            if(facedir .eq. derivdir) then
               gphi(veldir, derivdir) = (phifab(i,j,veldir) - phifab(i-i
     &id,j-jjd,veldir))/dx
            else
               gphi(veldir, derivdir) = ((1.0d0)/((4.0d0)*dx))*(
     $ phifab(i+iid-iif,j+jjd-jjf,veldir) - phifab(i-iid-iif,j-jjd-jjf,v
     &eldir) +
     $ phifab(i+iid ,j+jjd ,veldir) - phifab(i-iid ,j-jjd ,veldir) )
            endif
         enddo
      enddo
      divu = (0.0d0)
      do veldir = 0, 2 -1
         divu = divu + gphi(veldir, veldir)
      enddo
      do veldir = 0, 2 -1
         fluxpt = eta*(gphi(facedir, veldir) + gphi(veldir, facedir))
         if(veldir .eq. facedir) then
            fluxpt = fluxpt + lam*divu
         endif
         flux(i,j, veldir) = beta*fluxpt
      enddo
      enddo
      enddo
      return
      end
      subroutine PROLONGVTOP(
     & phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,coarse
     & ,icoarselo0,icoarselo1
     & ,icoarsehi0,icoarsehi1
     & ,ncoarsecomp
     & ,iregionlo0,iregionlo1
     & ,iregionhi0,iregionhi1
     & ,m
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
      integer ncoarsecomp
      integer icoarselo0,icoarselo1
      integer icoarsehi0,icoarsehi1
      REAL*8 coarse(
     & icoarselo0:icoarsehi0,
     & icoarselo1:icoarsehi1,
     & 0:ncoarsecomp-1)
      integer iregionlo0,iregionlo1
      integer iregionhi0,iregionhi1
      integer m
      integer ncomp, n
      integer i,j
      integer ii,jj
      ncomp = nphicomp
      do n = 0, ncomp-1
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
          ii = (i-abs(mod(i,m)))/m
          jj = (j-abs(mod(j,m)))/m
          phi(i,j,n) = phi(i,j,n) +
     & coarse(ii,jj,n)
      enddo
      enddo
      enddo
      return
      end
      subroutine RESTRICTRESVTOP(
     & res
     & ,ireslo0,ireslo1
     & ,ireshi0,ireshi1
     & ,nrescomp
     & ,resfine
     & ,iresfinelo0,iresfinelo1
     & ,iresfinehi0,iresfinehi1
     & ,nresfinecomp
     & ,iregionlo0,iregionlo1
     & ,iregionhi0,iregionhi1
     & ,ncomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nrescomp
      integer ireslo0,ireslo1
      integer ireshi0,ireshi1
      REAL*8 res(
     & ireslo0:ireshi0,
     & ireslo1:ireshi1,
     & 0:nrescomp-1)
      integer nresfinecomp
      integer iresfinelo0,iresfinelo1
      integer iresfinehi0,iresfinehi1
      REAL*8 resfine(
     & iresfinelo0:iresfinehi0,
     & iresfinelo1:iresfinehi1,
     & 0:nresfinecomp-1)
      integer iregionlo0,iregionlo1
      integer iregionhi0,iregionhi1
      integer ncomp
      REAL*8 denom
      integer n
      integer i,j
      integer ii,jj
      denom = (2.0d0) *(2.0d0)
      do n = 0, ncomp-1
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
         ii = (i-abs(mod(i,2)))/2
         jj = (j-abs(mod(j,2)))/2
         res(ii,jj,n) = res(ii,jj,n) + resfine(i,j,n)/denom
      enddo
      enddo
      enddo
      return
      end
      subroutine CELLGRADVTOP(
     & grad
     & ,igradlo0,igradlo1
     & ,igradhi0,igradhi1
     & ,vel
     & ,ivello0,ivello1
     & ,ivelhi0,ivelhi1
     & ,igridlo0,igridlo1
     & ,igridhi0,igridhi1
     & ,dx
     & ,divdir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer igradlo0,igradlo1
      integer igradhi0,igradhi1
      REAL*8 grad(
     & igradlo0:igradhi0,
     & igradlo1:igradhi1)
      integer ivello0,ivello1
      integer ivelhi0,ivelhi1
      REAL*8 vel(
     & ivello0:ivelhi0,
     & ivello1:ivelhi1)
      integer igridlo0,igridlo1
      integer igridhi0,igridhi1
      REAL*8 dx
      integer divdir
      integer ii,i,jj,j
      ii = chf_id(divdir, 0)
      jj = chf_id(divdir, 1)
      do j = igridlo1,igridhi1
      do i = igridlo0,igridhi0
      grad(i,j) =
     $ ( vel(i+ii,j+jj)
     $ - vel(i-ii,j-jj) )/((2.0d0)*dx)
      enddo
      enddo
      return
      end
      subroutine ADDGRADTOFLUXVTOP(
     & flux
     & ,ifluxlo0,ifluxlo1
     & ,ifluxhi0,ifluxhi1
     & ,nfluxcomp
     & ,eta
     & ,ietalo0,ietalo1
     & ,ietahi0,ietahi1
     & ,fluxcomp
     & ,grad
     & ,igradlo0,igradlo1
     & ,igradhi0,igradhi1
     & ,ngradcomp
     & ,gradcomp
     & ,gradtran
     & ,iregionfacelo0,iregionfacelo1
     & ,iregionfacehi0,iregionfacehi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nfluxcomp
      integer ifluxlo0,ifluxlo1
      integer ifluxhi0,ifluxhi1
      REAL*8 flux(
     & ifluxlo0:ifluxhi0,
     & ifluxlo1:ifluxhi1,
     & 0:nfluxcomp-1)
      integer ietalo0,ietalo1
      integer ietahi0,ietahi1
      REAL*8 eta(
     & ietalo0:ietahi0,
     & ietalo1:ietahi1)
      integer fluxcomp
      integer ngradcomp
      integer igradlo0,igradlo1
      integer igradhi0,igradhi1
      REAL*8 grad(
     & igradlo0:igradhi0,
     & igradlo1:igradhi1,
     & 0:ngradcomp-1)
      integer gradcomp
      integer gradtran
      integer iregionfacelo0,iregionfacelo1
      integer iregionfacehi0,iregionfacehi1
      integer i,j
      REAL*8 gradcontrib, trancontrib, etafac
      do j = iregionfacelo1,iregionfacehi1
      do i = iregionfacelo0,iregionfacehi0
      etafac = eta(i,j)
      gradcontrib = grad(i,j, gradcomp)
      trancontrib = grad(i,j, gradtran)
      flux(i,j, fluxcomp) = flux(i,j, fluxcomp) +
     $ eta(i,j)*
     $ ( grad(i,j, gradcomp)
     $ + grad(i,j, gradtran) )
      enddo
      enddo
      return
      end
      subroutine GETFACEGRADVTOP(
     & gradvelface
     & ,igradvelfacelo0,igradvelfacelo1
     & ,igradvelfacehi0,igradvelfacehi1
     & ,gradvelcell
     & ,igradvelcelllo0,igradvelcelllo1
     & ,igradvelcellhi0,igradvelcellhi1
     & ,velcomp
     & ,ivelcomplo0,ivelcomplo1
     & ,ivelcomphi0,ivelcomphi1
     & ,iregionlo0,iregionlo1
     & ,iregionhi0,iregionhi1
     & ,icenterboxlo0,icenterboxlo1
     & ,icenterboxhi0,icenterboxhi1
     & ,iloboxlo0,iloboxlo1
     & ,iloboxhi0,iloboxhi1
     & ,haslo
     & ,ihiboxlo0,ihiboxlo1
     & ,ihiboxhi0,ihiboxhi1
     & ,hashi
     & ,dx
     & ,facedir
     & ,divdir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer igradvelfacelo0,igradvelfacelo1
      integer igradvelfacehi0,igradvelfacehi1
      REAL*8 gradvelface(
     & igradvelfacelo0:igradvelfacehi0,
     & igradvelfacelo1:igradvelfacehi1)
      integer igradvelcelllo0,igradvelcelllo1
      integer igradvelcellhi0,igradvelcellhi1
      REAL*8 gradvelcell(
     & igradvelcelllo0:igradvelcellhi0,
     & igradvelcelllo1:igradvelcellhi1)
      integer ivelcomplo0,ivelcomplo1
      integer ivelcomphi0,ivelcomphi1
      REAL*8 velcomp(
     & ivelcomplo0:ivelcomphi0,
     & ivelcomplo1:ivelcomphi1)
      integer iregionlo0,iregionlo1
      integer iregionhi0,iregionhi1
      integer icenterboxlo0,icenterboxlo1
      integer icenterboxhi0,icenterboxhi1
      integer iloboxlo0,iloboxlo1
      integer iloboxhi0,iloboxhi1
      integer haslo
      integer ihiboxlo0,ihiboxlo1
      integer ihiboxhi0,ihiboxhi1
      integer hashi
      REAL*8 dx
      integer facedir
      integer divdir
      integer ii,i,jj,j
      ii = chf_id(facedir, 0)
      jj = chf_id(facedir, 1)
      if (facedir .eq. divdir) then
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
         gradvelface(i,j) =
     $ ( velcomp(i ,j )
     $ - velcomp(i-ii,j-jj) )/dx
      enddo
      enddo
      else
      do j = icenterboxlo1,icenterboxhi1
      do i = icenterboxlo0,icenterboxhi0
         gradvelface(i,j) =
     $ ( gradvelcell(i ,j )
     $ + gradvelcell(i-ii,j-jj) )/(2.0d0)
      enddo
      enddo
         if(haslo .eq. 1) then
      do j = iloboxlo1,iloboxhi1
      do i = iloboxlo0,iloboxhi0
            gradvelface(i,j) =
     $ ((3.0d0)*gradvelcell(i ,j )
     $ - gradvelcell(i+ii,j+jj))/(2.0d0)
      enddo
      enddo
         endif
         if(hashi .eq. 1) then
      do j = ihiboxlo1,ihiboxhi1
      do i = ihiboxlo0,ihiboxhi0
            gradvelface(i,j) =
     $ ((3.0d0)*gradvelcell(i- ii,j- jj)
     $ - gradvelcell(i-2*ii,j-2*jj))/(2.0d0)
      enddo
      enddo
         endif
      endif
      return
      end
      subroutine CELLDIVINCRVTOP(
     & divvel
     & ,idivvello0,idivvello1
     & ,idivvelhi0,idivvelhi1
     & ,vel
     & ,ivello0,ivello1
     & ,ivelhi0,ivelhi1
     & ,nvelcomp
     & ,dx
     & ,divdir
     & ,iregionlo0,iregionlo1
     & ,iregionhi0,iregionhi1
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer idivvello0,idivvello1
      integer idivvelhi0,idivvelhi1
      REAL*8 divvel(
     & idivvello0:idivvelhi0,
     & idivvello1:idivvelhi1)
      integer nvelcomp
      integer ivello0,ivello1
      integer ivelhi0,ivelhi1
      REAL*8 vel(
     & ivello0:ivelhi0,
     & ivello1:ivelhi1,
     & 0:nvelcomp-1)
      REAL*8 dx
      integer divdir
      integer iregionlo0,iregionlo1
      integer iregionhi0,iregionhi1
      integer ii,i,jj,j
      ii = chf_id(divdir, 0)
      jj = chf_id(divdir, 1)
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
      divvel(i,j) = divvel(i,j) +
     $ ( vel(i+ii,j+jj,divdir)
     $ - vel(i-ii,j-jj,divdir) )/((2.0d0)*dx)
      enddo
      enddo
      return
      end
      subroutine FACEDIVINCRVTOP(
     & divvel
     & ,idivvello0,idivvello1
     & ,idivvelhi0,idivvelhi1
     & ,vel
     & ,ivello0,ivello1
     & ,ivelhi0,ivelhi1
     & ,nvelcomp
     & ,gradvel
     & ,igradvello0,igradvello1
     & ,igradvelhi0,igradvelhi1
     & ,ngradvelcomp
     & ,iregionlo0,iregionlo1
     & ,iregionhi0,iregionhi1
     & ,icenterboxlo0,icenterboxlo1
     & ,icenterboxhi0,icenterboxhi1
     & ,iloboxlo0,iloboxlo1
     & ,iloboxhi0,iloboxhi1
     & ,haslo
     & ,ihiboxlo0,ihiboxlo1
     & ,ihiboxhi0,ihiboxhi1
     & ,hashi
     & ,dx
     & ,facedir
     & ,divdir
     & ,gradcomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer idivvello0,idivvello1
      integer idivvelhi0,idivvelhi1
      REAL*8 divvel(
     & idivvello0:idivvelhi0,
     & idivvello1:idivvelhi1)
      integer nvelcomp
      integer ivello0,ivello1
      integer ivelhi0,ivelhi1
      REAL*8 vel(
     & ivello0:ivelhi0,
     & ivello1:ivelhi1,
     & 0:nvelcomp-1)
      integer ngradvelcomp
      integer igradvello0,igradvello1
      integer igradvelhi0,igradvelhi1
      REAL*8 gradvel(
     & igradvello0:igradvelhi0,
     & igradvello1:igradvelhi1,
     & 0:ngradvelcomp-1)
      integer iregionlo0,iregionlo1
      integer iregionhi0,iregionhi1
      integer icenterboxlo0,icenterboxlo1
      integer icenterboxhi0,icenterboxhi1
      integer iloboxlo0,iloboxlo1
      integer iloboxhi0,iloboxhi1
      integer haslo
      integer ihiboxlo0,ihiboxlo1
      integer ihiboxhi0,ihiboxhi1
      integer hashi
      REAL*8 dx
      integer facedir
      integer divdir
      integer gradcomp
      integer ii,i,jj,j
      ii = chf_id(facedir, 0)
      jj = chf_id(facedir, 1)
      if (facedir .eq. divdir) then
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
         divvel(i,j) = divvel(i,j) +
     $ ( vel(i ,j ,facedir)
     $ - vel(i-ii,j-jj,facedir) )/dx
      enddo
      enddo
      else
      do j = icenterboxlo1,icenterboxhi1
      do i = icenterboxlo0,icenterboxhi0
         divvel(i,j) = divvel(i,j) +
     $ ( gradvel(i ,j , gradcomp)
     $ + gradvel(i-ii,j-jj, gradcomp) )/(2.0d0)
      enddo
      enddo
         if(haslo .eq. 1) then
      do j = iloboxlo1,iloboxhi1
      do i = iloboxlo0,iloboxhi0
            divvel(i,j) = divvel(i,j) +
     $ ((3.0d0)*gradvel(i ,j , gradcomp)
     $ - gradvel(i+ii,j+jj, gradcomp))/(2.0d0)
      enddo
      enddo
         endif
         if(hashi .eq. 1) then
      do j = ihiboxlo1,ihiboxhi1
      do i = ihiboxlo0,ihiboxhi0
            divvel(i,j) = divvel(i,j) +
     $ ((3.0d0)*gradvel(i- ii,j- jj, gradcomp)
     $ - gradvel(i-2*ii,j-2*jj, gradcomp))/(2.0d0)
      enddo
      enddo
         endif
      endif
      return
      end
      subroutine DECRINVRELCOEFVTOP(
     & relcoef
     & ,irelcoeflo0,irelcoeflo1
     & ,irelcoefhi0,irelcoefhi1
     & ,nrelcoefcomp
     & ,eta
     & ,ietalo0,ietalo1
     & ,ietahi0,ietahi1
     & ,netacomp
     & ,lambda
     & ,ilambdalo0,ilambdalo1
     & ,ilambdahi0,ilambdahi1
     & ,nlambdacomp
     & ,beta
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & ,dx
     & ,idir
     & ,ncomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nrelcoefcomp
      integer irelcoeflo0,irelcoeflo1
      integer irelcoefhi0,irelcoefhi1
      REAL*8 relcoef(
     & irelcoeflo0:irelcoefhi0,
     & irelcoeflo1:irelcoefhi1,
     & 0:nrelcoefcomp-1)
      integer netacomp
      integer ietalo0,ietalo1
      integer ietahi0,ietahi1
      REAL*8 eta(
     & ietalo0:ietahi0,
     & ietalo1:ietahi1,
     & 0:netacomp-1)
      integer nlambdacomp
      integer ilambdalo0,ilambdalo1
      integer ilambdahi0,ilambdahi1
      REAL*8 lambda(
     & ilambdalo0:ilambdahi0,
     & ilambdalo1:ilambdahi1,
     & 0:nlambdacomp-1)
      REAL*8 beta
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      REAL*8 dx
      integer idir
      integer ncomp
      integer ii,jj
      integer i,j
      integer icomp
      REAL*8 lamh, laml,etah, etal, relcoold, relconew, incr
      ii = chf_id(idir, 0)
      jj = chf_id(idir, 1)
      do icomp = 0, ncomp-1
      do j = iboxlo1,iboxhi1
      do i = iboxlo0,iboxhi0
         relcoold = relcoef(i,j,icomp)
         etah = eta(i+ii,j+jj,0)
         etal = eta(i ,j ,0)
         lamh = lambda(i+ii,j+jj,0)
         laml = lambda(i ,j ,0)
         if(icomp .eq. idir) then
            incr =
     $ beta*(
     $ (2.0d0)*eta(i+ii,j+jj,0) +
     $ lambda (i+ii,j+jj,0) +
     $ (2.0d0)*eta(i ,j ,0) +
     $ lambda (i ,j ,0)
     $ )/(dx*dx)
         else
            incr =
     $ beta*(
     $ eta(i+ii,j+jj,0) +
     $ eta(i ,j ,0)
     $ )/(dx*dx)
         endif
         relcoef(i,j, icomp) = relcoef(i,j,icomp) - incr
         relconew = relcoef(i,j,icomp)
      enddo
      enddo
      enddo
      return
      end
      subroutine INITIALIZERELAXCOEF(
     & relcoef
     & ,irelcoeflo0,irelcoeflo1
     & ,irelcoefhi0,irelcoefhi1
     & ,nrelcoefcomp
     & ,acoef
     & ,iacoeflo0,iacoeflo1
     & ,iacoefhi0,iacoefhi1
     & ,alpha
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & ,ncomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nrelcoefcomp
      integer irelcoeflo0,irelcoeflo1
      integer irelcoefhi0,irelcoefhi1
      REAL*8 relcoef(
     & irelcoeflo0:irelcoefhi0,
     & irelcoeflo1:irelcoefhi1,
     & 0:nrelcoefcomp-1)
      integer iacoeflo0,iacoeflo1
      integer iacoefhi0,iacoefhi1
      REAL*8 acoef(
     & iacoeflo0:iacoefhi0,
     & iacoeflo1:iacoefhi1)
      REAL*8 alpha
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      integer ncomp
      integer i,j
      integer icomp
      do icomp = 0, ncomp-1
      do j = iboxlo1,iboxhi1
      do i = iboxlo0,iboxhi0
         relcoef(i,j, icomp) = alpha*acoef(i,j)
      enddo
      enddo
      enddo
      return
      end
      subroutine INVERTLAMBDAVTOP(
     & lambda
     & ,ilambdalo0,ilambdalo1
     & ,ilambdahi0,ilambdahi1
     & ,nlambdacomp
     & ,safety
     & ,iboxlo0,iboxlo1
     & ,iboxhi0,iboxhi1
     & ,ncomp
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer nlambdacomp
      integer ilambdalo0,ilambdalo1
      integer ilambdahi0,ilambdahi1
      REAL*8 lambda(
     & ilambdalo0:ilambdahi0,
     & ilambdalo1:ilambdahi1,
     & 0:nlambdacomp-1)
      REAL*8 safety
      integer iboxlo0,iboxlo1
      integer iboxhi0,iboxhi1
      integer ncomp
      integer i,j
      integer icomp,jcomp
      REAL*8 zeroval
      zeroval = 1.0e-20
      do j = iboxlo1,iboxhi1
      do i = iboxlo0,iboxhi0
         do icomp = 0, ncomp-1
            lambda(i,j, icomp) = safety/lambda(i,j, icomp)
         enddo
      enddo
      enddo
      return
      end
      subroutine GSRBVTOP(
     & phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,lphi
     & ,ilphilo0,ilphilo1
     & ,ilphihi0,ilphihi1
     & ,nlphicomp
     & ,rhs
     & ,irhslo0,irhslo1
     & ,irhshi0,irhshi1
     & ,nrhscomp
     & ,lambda
     & ,ilambdalo0,ilambdalo1
     & ,ilambdahi0,ilambdahi1
     & ,nlambdacomp
     & ,icoloredboxlo0,icoloredboxlo1
     & ,icoloredboxhi0,icoloredboxhi1
     & ,ncomp
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
      integer nlphicomp
      integer ilphilo0,ilphilo1
      integer ilphihi0,ilphihi1
      REAL*8 lphi(
     & ilphilo0:ilphihi0,
     & ilphilo1:ilphihi1,
     & 0:nlphicomp-1)
      integer nrhscomp
      integer irhslo0,irhslo1
      integer irhshi0,irhshi1
      REAL*8 rhs(
     & irhslo0:irhshi0,
     & irhslo1:irhshi1,
     & 0:nrhscomp-1)
      integer nlambdacomp
      integer ilambdalo0,ilambdalo1
      integer ilambdahi0,ilambdahi1
      REAL*8 lambda(
     & ilambdalo0:ilambdahi0,
     & ilambdalo1:ilambdahi1,
     & 0:nlambdacomp-1)
      integer icoloredboxlo0,icoloredboxlo1
      integer icoloredboxhi0,icoloredboxhi1
      integer ncomp
      integer i,j
      integer icomp
      REAL*8 phio, lamo, rhso, lphio
      do icomp = 0, ncomp-1
      do j = icoloredboxlo1,icoloredboxhi1,2
      do i = icoloredboxlo0,icoloredboxhi0,2
         phio = phi( i,j,icomp)
         lamo = lambda(i,j,icomp)
         rhso = rhs( i,j,icomp)
         lphio = lphi( i,j,icomp)
         phi(i,j, icomp) =
     $ phi( i,j,icomp) +
     & lambda(i,j,icomp)*(
     $ rhs( i,j,icomp) -
     $ lphi( i,j,icomp))
      enddo
      enddo
      enddo
      return
      end
      subroutine ADDDIVFLUXDIRVTOP(
     & lhs
     & ,ilhslo0,ilhslo1
     & ,ilhshi0,ilhshi1
     & ,nlhscomp
     & ,flux
     & ,ifluxlo0,ifluxlo1
     & ,ifluxhi0,ifluxhi1
     & ,nfluxcomp
     & ,iregionlo0,iregionlo1
     & ,iregionhi0,iregionhi1
     & ,dx
     & ,ncomp
     & ,facedir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nlhscomp
      integer ilhslo0,ilhslo1
      integer ilhshi0,ilhshi1
      REAL*8 lhs(
     & ilhslo0:ilhshi0,
     & ilhslo1:ilhshi1,
     & 0:nlhscomp-1)
      integer nfluxcomp
      integer ifluxlo0,ifluxlo1
      integer ifluxhi0,ifluxhi1
      REAL*8 flux(
     & ifluxlo0:ifluxhi0,
     & ifluxlo1:ifluxhi1,
     & 0:nfluxcomp-1)
      integer iregionlo0,iregionlo1
      integer iregionhi0,iregionhi1
      REAL*8 dx
      integer ncomp
      integer facedir
      integer ii,i,jj,j
      integer icomp
      ii = chf_id(facedir, 0)
      jj = chf_id(facedir, 1)
      do icomp = 0, ncomp-1
      do j = iregionlo1,iregionhi1
      do i = iregionlo0,iregionhi0
         lhs(i,j, icomp) = lhs(i,j, icomp)
     $ +
     $ (flux(i+ii,j+jj, icomp)
     $ -flux(i ,j , icomp))/dx
      enddo
      enddo
      enddo
      return
      end
      subroutine LINEAREXTRAPVTOP(
     & phi
     & ,iphilo0,iphilo1
     & ,iphihi0,iphihi1
     & ,nphicomp
     & ,ighostBoxlo0,ighostBoxlo1
     & ,ighostBoxhi0,ighostBoxhi1
     & ,dir
     & ,hiLo
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nphicomp
      integer iphilo0,iphilo1
      integer iphihi0,iphihi1
      REAL*8 phi(
     & iphilo0:iphihi0,
     & iphilo1:iphihi1,
     & 0:nphicomp-1)
      integer ighostBoxlo0,ighostBoxlo1
      integer ighostBoxhi0,ighostBoxhi1
      integer dir
      integer hiLo
      integer n
      integer i0,i1
      integer ii0,ii1
      ii0= hiLo*CHF_ID(0, dir)
      ii1= hiLo*CHF_ID(1, dir)
      do n=0, nphicomp-1
      do i1 = ighostBoxlo1,ighostBoxhi1
      do i0 = ighostBoxlo0,ighostBoxhi0
           phi(i0,i1,n) = (2.0d0)*phi(i0-ii0,i1-ii1,n)
     & - phi(i0-2*ii0,i1-2*ii1,n)
      enddo
      enddo
      enddo
      return
      end
      subroutine SLOPESVTOP(
     & slopes
     & ,islopeslo0,islopeslo1
     & ,islopeshi0,islopeshi1
     & ,nslopescomp
     & ,coarse
     & ,icoarselo0,icoarselo1
     & ,icoarsehi0,icoarsehi1
     & ,ncoarsecomp
     & ,icBoxlo0,icBoxlo1
     & ,icBoxhi0,icBoxhi1
     & ,dir
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nslopescomp
      integer islopeslo0,islopeslo1
      integer islopeshi0,islopeshi1
      REAL*8 slopes(
     & islopeslo0:islopeshi0,
     & islopeslo1:islopeshi1,
     & 0:nslopescomp-1)
      integer ncoarsecomp
      integer icoarselo0,icoarselo1
      integer icoarsehi0,icoarsehi1
      REAL*8 coarse(
     & icoarselo0:icoarsehi0,
     & icoarselo1:icoarsehi1,
     & 0:ncoarsecomp-1)
      integer icBoxlo0,icBoxlo1
      integer icBoxhi0,icBoxhi1
      integer dir
      integer n, i0,i1, ii0,ii1
      ii0= 1*CHF_ID(0, dir)
      ii1= 1*CHF_ID(1, dir)
      do n=0, ncoarsecomp-1
      do i1 = icBoxlo1,icBoxhi1
      do i0 = icBoxlo0,icBoxhi0
         slopes(i0,i1,n) = 0.5*(coarse(i0+ii0,i1+ii1,n)
     & -coarse(i0-ii0,i1-ii1,n))
      enddo
      enddo
      enddo
      return
      end
