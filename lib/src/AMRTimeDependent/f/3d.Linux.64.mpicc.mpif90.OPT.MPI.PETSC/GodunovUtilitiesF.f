# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovUtilitiesF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovUtilitiesF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/REAL.H" 1
# 2 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovUtilitiesF.C" 2
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
# 3 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovUtilitiesF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovUtilitiesF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/src/AMRTimeDependent/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovUtilitiesF.C" 2
      subroutine MINFLATF(
     & flattening
     & ,iflatteninglo0,iflatteninglo1,iflatteninglo2
     & ,iflatteninghi0,iflatteninghi1,iflatteninghi2
     & ,zetaDir
     & ,izetaDirlo0,izetaDirlo1,izetaDirlo2
     & ,izetaDirhi0,izetaDirhi1,izetaDirhi2
     & ,nzetaDircomp
     & ,du
     & ,idulo0,idulo1,idulo2
     & ,iduhi0,iduhi1,iduhi2
     & ,nducomp
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer iflatteninglo0,iflatteninglo1,iflatteninglo2
      integer iflatteninghi0,iflatteninghi1,iflatteninghi2
      REAL*8 flattening(
     & iflatteninglo0:iflatteninghi0,
     & iflatteninglo1:iflatteninghi1,
     & iflatteninglo2:iflatteninghi2)
      integer nzetaDircomp
      integer izetaDirlo0,izetaDirlo1,izetaDirlo2
      integer izetaDirhi0,izetaDirhi1,izetaDirhi2
      REAL*8 zetaDir(
     & izetaDirlo0:izetaDirhi0,
     & izetaDirlo1:izetaDirhi1,
     & izetaDirlo2:izetaDirhi2,
     & 0:nzetaDircomp-1)
      integer nducomp
      integer idulo0,idulo1,idulo2
      integer iduhi0,iduhi1,iduhi2
      REAL*8 du(
     & idulo0:iduhi0,
     & idulo1:iduhi1,
     & idulo2:iduhi2,
     & 0:nducomp-1)
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      integer i0,i1,i2
      integer iv
      REAL*8 sumdu,minflattot,minZetaDir
      do i2 = iboxlo2,iboxhi2
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
         sumdu = 0
         do iv = 0,nducomp - 1
            sumdu = sumdu + du(i0,i1,i2,iv)
         enddo
         if (sumdu .lt. 0) then
            minflattot = zetaDir(i0,i1,i2,0)
            do iv = 1,nducomp - 1
               minZetaDir = zetaDir(i0,i1,i2,iv)
               minflattot = min(minflattot,minZetaDir)
            enddo
            flattening(i0,i1,i2) = minflattot
         else
            flattening(i0,i1,i2) = (1.0d0)
         endif
      enddo
      enddo
      enddo
      return
      end
      subroutine GETDPTWOF(
     & delta2p
     & ,idelta2plo0,idelta2plo1,idelta2plo2
     & ,idelta2phi0,idelta2phi1,idelta2phi2
     & ,delta1p
     & ,idelta1plo0,idelta1plo1,idelta1plo2
     & ,idelta1phi0,idelta1phi1,idelta1phi2
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer idelta2plo0,idelta2plo1,idelta2plo2
      integer idelta2phi0,idelta2phi1,idelta2phi2
      REAL*8 delta2p(
     & idelta2plo0:idelta2phi0,
     & idelta2plo1:idelta2phi1,
     & idelta2plo2:idelta2phi2)
      integer idelta1plo0,idelta1plo1,idelta1plo2
      integer idelta1phi0,idelta1phi1,idelta1phi2
      REAL*8 delta1p(
     & idelta1plo0:idelta1phi0,
     & idelta1plo1:idelta1phi1,
     & idelta1plo2:idelta1phi2)
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
         delta2p(i0,i1,i2) = delta1p(i0 +ioff0,i1 +ioff1,i2 +ioff2)
     & + delta1p(i0 -ioff0,i1 -ioff1,i2 -ioff2)
      enddo
      enddo
      enddo
      if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
            delta2p(i0,i1,i2) = delta1p(i0 +ioff0,i1 +ioff1,i2 +ioff2)
     & + delta1p(i0,i1,i2)
      enddo
      enddo
      enddo
         endif
      if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
            delta2p(i0,i1,i2) = delta1p(i0,i1,i2)
     & + delta1p(i0 -ioff0,i1 -ioff1,i2 -ioff2)
      enddo
      enddo
      enddo
      endif
      return
      end
      subroutine GETFLATF(
     & zetaTwiddle
     & ,izetaTwiddlelo0,izetaTwiddlelo1,izetaTwiddlelo2
     & ,izetaTwiddlehi0,izetaTwiddlehi1,izetaTwiddlehi2
     & ,delta1p
     & ,idelta1plo0,idelta1plo1,idelta1plo2
     & ,idelta1phi0,idelta1phi1,idelta1phi2
     & ,delta2p
     & ,idelta2plo0,idelta2plo1,idelta2plo2
     & ,idelta2phi0,idelta2phi1,idelta2phi2
     & ,smallp
     & ,bulkMin
     & ,ibulkMinlo0,ibulkMinlo1,ibulkMinlo2
     & ,ibulkMinhi0,ibulkMinhi1,ibulkMinhi2
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer izetaTwiddlelo0,izetaTwiddlelo1,izetaTwiddlelo2
      integer izetaTwiddlehi0,izetaTwiddlehi1,izetaTwiddlehi2
      REAL*8 zetaTwiddle(
     & izetaTwiddlelo0:izetaTwiddlehi0,
     & izetaTwiddlelo1:izetaTwiddlehi1,
     & izetaTwiddlelo2:izetaTwiddlehi2)
      integer idelta1plo0,idelta1plo1,idelta1plo2
      integer idelta1phi0,idelta1phi1,idelta1phi2
      REAL*8 delta1p(
     & idelta1plo0:idelta1phi0,
     & idelta1plo1:idelta1phi1,
     & idelta1plo2:idelta1phi2)
      integer idelta2plo0,idelta2plo1,idelta2plo2
      integer idelta2phi0,idelta2phi1,idelta2phi2
      REAL*8 delta2p(
     & idelta2plo0:idelta2phi0,
     & idelta2plo1:idelta2phi1,
     & idelta2plo2:idelta2phi2)
      REAL*8 smallp
      integer ibulkMinlo0,ibulkMinlo1,ibulkMinlo2
      integer ibulkMinhi0,ibulkMinhi1,ibulkMinhi2
      REAL*8 bulkMin(
     & ibulkMinlo0:ibulkMinhi0,
     & ibulkMinlo1:ibulkMinhi1,
     & ibulkMinlo2:ibulkMinhi2)
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      integer i0,i1,i2
      REAL*8 d,r0,r1,ratio,strength
# 232 "p/3d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/GodunovUtilitiesF.C"
      data d /0.33d0/
      data r0 /0.75d0/
      data r1 /0.85d0/
      do i2 = iboxlo2,iboxhi2
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
         strength = abs(delta1p(i0,i1,i2)/bulkMin(i0,i1,i2))
         if (strength .ge. d) then
            ratio = abs(delta1p(i0,i1,i2)
     & / max(abs(delta2p(i0,i1,i2)),smallp))
            if (ratio .le. r0) then
               zetaTwiddle(i0,i1,i2) = (1.0d0)
            else if (ratio .ge. r1) then
               zetaTwiddle(i0,i1,i2) = 0
            else
               zetaTwiddle(i0,i1,i2) = (1.0d0) - (ratio - r0)/(r1 - r0)
            endif
         else
            zetaTwiddle(i0,i1,i2) = (1.0d0)
         endif
      enddo
      enddo
      enddo
      return
      end
      subroutine GETGRADF(
     & du
     & ,idulo0,idulo1,idulo2
     & ,iduhi0,iduhi1,iduhi2
     & ,u
     & ,iulo0,iulo1,iulo2
     & ,iuhi0,iuhi1,iuhi2
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer idulo0,idulo1,idulo2
      integer iduhi0,iduhi1,iduhi2
      REAL*8 du(
     & idulo0:iduhi0,
     & idulo1:iduhi1,
     & idulo2:iduhi2)
      integer iulo0,iulo1,iulo2
      integer iuhi0,iuhi1,iuhi2
      REAL*8 u(
     & iulo0:iuhi0,
     & iulo1:iuhi1,
     & iulo2:iuhi2)
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
         du(i0,i1,i2) = (0.500d0)*(u(i0 +ioff0,i1 +ioff1,i2 +ioff2)
     & - u(i0 -ioff0,i1 -ioff1,i2 -ioff2))
      enddo
      enddo
      enddo
      if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
            du(i0,i1,i2) = (u(i0 +ioff0,i1 +ioff1,i2 +ioff2)
     & - u(i0,i1,i2))
      enddo
      enddo
      enddo
      endif
      if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
            du(i0,i1,i2) = (u(i0,i1,i2)
     & - u(i0 -ioff0,i1 -ioff1,i2 -ioff2))
      enddo
      enddo
      enddo
      endif
      return
      end
      subroutine MIN3PTSF(
     & mindata
     & ,imindatalo0,imindatalo1,imindatalo2
     & ,imindatahi0,imindatahi1,imindatahi2
     & ,data
     & ,idatalo0,idatalo1,idatalo2
     & ,idatahi0,idatahi1,idatahi2
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer imindatalo0,imindatalo1,imindatalo2
      integer imindatahi0,imindatahi1,imindatahi2
      REAL*8 mindata(
     & imindatalo0:imindatahi0,
     & imindatalo1:imindatahi1,
     & imindatalo2:imindatahi2)
      integer idatalo0,idatalo1,idatalo2
      integer idatahi0,idatahi1,idatahi2
      REAL*8 data(
     & idatalo0:idatahi0,
     & idatalo1:idatahi1,
     & idatalo2:idatahi2)
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
         mindata(i0,i1,i2) = min(data(i0,i1,i2),
     & data(i0 +ioff0,i1 +ioff1,i2 +ioff2),
     & data(i0 -ioff0,i1 -ioff1,i2 -ioff2))
      enddo
      enddo
      enddo
      if (hasLo .ne. 0) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
            mindata(i0,i1,i2) = min(data(i0,i1,i2),
     & data(i0 +ioff0,i1 +ioff1,i2 +ioff2))
      enddo
      enddo
      enddo
      endif
      if (hasHi .ne. 0) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
            mindata(i0,i1,i2) = min(data(i0,i1,i2),
     & data(i0 -ioff0,i1 -ioff1,i2 -ioff2))
      enddo
      enddo
      enddo
      endif
      return
      end
      subroutine SECONDSLOPEDIFFSF(
     & deltaWC
     & ,ideltaWClo0,ideltaWClo1,ideltaWClo2
     & ,ideltaWChi0,ideltaWChi1,ideltaWChi2
     & ,ndeltaWCcomp
     & ,deltaWL
     & ,ideltaWLlo0,ideltaWLlo1,ideltaWLlo2
     & ,ideltaWLhi0,ideltaWLhi1,ideltaWLhi2
     & ,ndeltaWLcomp
     & ,deltaWR
     & ,ideltaWRlo0,ideltaWRlo1,ideltaWRlo2
     & ,ideltaWRhi0,ideltaWRhi1,ideltaWRhi2
     & ,ndeltaWRcomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ndeltaWCcomp
      integer ideltaWClo0,ideltaWClo1,ideltaWClo2
      integer ideltaWChi0,ideltaWChi1,ideltaWChi2
      REAL*8 deltaWC(
     & ideltaWClo0:ideltaWChi0,
     & ideltaWClo1:ideltaWChi1,
     & ideltaWClo2:ideltaWChi2,
     & 0:ndeltaWCcomp-1)
      integer ndeltaWLcomp
      integer ideltaWLlo0,ideltaWLlo1,ideltaWLlo2
      integer ideltaWLhi0,ideltaWLhi1,ideltaWLhi2
      REAL*8 deltaWL(
     & ideltaWLlo0:ideltaWLhi0,
     & ideltaWLlo1:ideltaWLhi1,
     & ideltaWLlo2:ideltaWLhi2,
     & 0:ndeltaWLcomp-1)
      integer ndeltaWRcomp
      integer ideltaWRlo0,ideltaWRlo1,ideltaWRlo2
      integer ideltaWRhi0,ideltaWRhi1,ideltaWRhi2
      REAL*8 deltaWR(
     & ideltaWRlo0:ideltaWRhi0,
     & ideltaWRlo1:ideltaWRhi1,
     & ideltaWRlo2:ideltaWRhi2,
     & 0:ndeltaWRcomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer lvar
      integer ioff0,ioff1,ioff2
      REAL*8 dWR,dWL
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do lvar = 0,numSlopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            dWR = W(i0 +ioff0,i1 +ioff1,i2 +ioff2,lvar)
     & - W(i0,i1,i2,lvar)
            dWL = W(i0,i1,i2,lvar)
     & - W(i0 -ioff0,i1 -ioff1,i2 -ioff2,lvar)
            deltaWR(i0,i1,i2,lvar) = dWR
            deltaWL(i0,i1,i2,lvar) = dWL
            deltaWC(i0,i1,i2,lvar) = (0.500d0)*(dWR + dWL)
      enddo
      enddo
      enddo
         if (hasLo .ne. 0) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               dWR = W(i0 +ioff0,i1 +ioff1,i2 +ioff2,lvar)
     & - W(i0,i1,i2,lvar)
               deltaWC(i0,i1,i2,lvar) = dWR
               deltaWL(i0,i1,i2,lvar) = dWR
               deltaWR(i0,i1,i2,lvar) = dWR
      enddo
      enddo
      enddo
         endif
         if (hasHi .ne. 0) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               dWL = W(i0,i1,i2,lvar)
     & - W(i0 -ioff0,i1 -ioff1,i2 -ioff2,lvar)
               deltaWC(i0,i1,i2,lvar) = dWL
               deltaWL(i0,i1,i2,lvar) = dWL
               deltaWR(i0,i1,i2,lvar) = dWL
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine FOURTHSLOPEDIFFSF(
     & delta4WC
     & ,idelta4WClo0,idelta4WClo1,idelta4WClo2
     & ,idelta4WChi0,idelta4WChi1,idelta4WChi2
     & ,ndelta4WCcomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,delta2W
     & ,idelta2Wlo0,idelta2Wlo1,idelta2Wlo2
     & ,idelta2Whi0,idelta2Whi1,idelta2Whi2
     & ,ndelta2Wcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ndelta4WCcomp
      integer idelta4WClo0,idelta4WClo1,idelta4WClo2
      integer idelta4WChi0,idelta4WChi1,idelta4WChi2
      REAL*8 delta4WC(
     & idelta4WClo0:idelta4WChi0,
     & idelta4WClo1:idelta4WChi1,
     & idelta4WClo2:idelta4WChi2,
     & 0:ndelta4WCcomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer ndelta2Wcomp
      integer idelta2Wlo0,idelta2Wlo1,idelta2Wlo2
      integer idelta2Whi0,idelta2Whi1,idelta2Whi2
      REAL*8 delta2W(
     & idelta2Wlo0:idelta2Whi0,
     & idelta2Wlo1:idelta2Whi1,
     & idelta2Wlo2:idelta2Whi2,
     & 0:ndelta2Wcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      integer lvar
      REAL*8 dWR,dWL
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do lvar = 0,numSlopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            dWR = W(i0 +ioff0,i1 +ioff1,i2 +ioff2,lvar)
     & - delta2W(i0 +ioff0,i1 +ioff1,i2 +ioff2,lvar)*(0.250d0)
            dWL = W(i0 -ioff0,i1 -ioff1,i2 -ioff2,lvar)
     & + delta2W(i0 -ioff0,i1 -ioff1,i2 -ioff2,lvar)*(0.250d0)
            delta4WC(i0,i1,i2,lvar) = (2.000d0 / 3.000d0)*(dWR - dWL)
      enddo
      enddo
      enddo
         if (hasLo .ne. 0) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               delta4WC(i0,i1,i2,lvar) =
     & delta2W(i0,i1,i2,lvar)
      enddo
      enddo
      enddo
         endif
         if (hasHi .ne. 0) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               delta4WC(i0,i1,i2,lvar) =
     & delta2W(i0,i1,i2,lvar)
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine APPLYFLATF(
     & dW
     & ,idWlo0,idWlo1,idWlo2
     & ,idWhi0,idWhi1,idWhi2
     & ,ndWcomp
     & ,flattening
     & ,iflatteninglo0,iflatteninglo1,iflatteninglo2
     & ,iflatteninghi0,iflatteninghi1,iflatteninghi2
     & ,numSlopes
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer ndWcomp
      integer idWlo0,idWlo1,idWlo2
      integer idWhi0,idWhi1,idWhi2
      REAL*8 dW(
     & idWlo0:idWhi0,
     & idWlo1:idWhi1,
     & idWlo2:idWhi2,
     & 0:ndWcomp-1)
      integer iflatteninglo0,iflatteninglo1,iflatteninglo2
      integer iflatteninghi0,iflatteninghi1,iflatteninghi2
      REAL*8 flattening(
     & iflatteninglo0:iflatteninghi0,
     & iflatteninglo1:iflatteninghi1,
     & iflatteninglo2:iflatteninghi2)
      integer numSlopes
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      integer i0,i1,i2
      integer lvar
      do lvar = 0,numSlopes - 1
      do i2 = iboxlo2,iboxhi2
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
            dW(i0,i1,i2,lvar) = flattening(i0,i1,i2)
     & * dW(i0,i1,i2,lvar)
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine VANLEERLIMITERF(
     & dW
     & ,idWlo0,idWlo1,idWlo2
     & ,idWhi0,idWhi1,idWhi2
     & ,ndWcomp
     & ,dWleft
     & ,idWleftlo0,idWleftlo1,idWleftlo2
     & ,idWlefthi0,idWlefthi1,idWlefthi2
     & ,ndWleftcomp
     & ,dWright
     & ,idWrightlo0,idWrightlo1,idWrightlo2
     & ,idWrighthi0,idWrighthi1,idWrighthi2
     & ,ndWrightcomp
     & ,numslopes
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer ndWcomp
      integer idWlo0,idWlo1,idWlo2
      integer idWhi0,idWhi1,idWhi2
      REAL*8 dW(
     & idWlo0:idWhi0,
     & idWlo1:idWhi1,
     & idWlo2:idWhi2,
     & 0:ndWcomp-1)
      integer ndWleftcomp
      integer idWleftlo0,idWleftlo1,idWleftlo2
      integer idWlefthi0,idWlefthi1,idWlefthi2
      REAL*8 dWleft(
     & idWleftlo0:idWlefthi0,
     & idWleftlo1:idWlefthi1,
     & idWleftlo2:idWlefthi2,
     & 0:ndWleftcomp-1)
      integer ndWrightcomp
      integer idWrightlo0,idWrightlo1,idWrightlo2
      integer idWrighthi0,idWrighthi1,idWrighthi2
      REAL*8 dWright(
     & idWrightlo0:idWrighthi0,
     & idWrightlo1:idWrighthi1,
     & idWrightlo2:idWrighthi2,
     & 0:ndWrightcomp-1)
      integer numslopes
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      integer i0,i1,i2
      integer iv
      REAL*8 dWl,dWr,dWc,dWlim
      do iv = 0,numslopes - 1
      do i2 = iboxlo2,iboxhi2
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
            dWc = dW (i0,i1,i2,iv)
            dWl = dWleft (i0,i1,i2,iv)
            dWr = dWright(i0,i1,i2,iv)
            dWlim = min((2.0d0)*abs(dWl),(2.0d0)*abs(dWr))
            dWlim = min(dWlim,abs(dWc))
            if (dWl * dWr .lt. 0) then
               dWlim = 0
            else
               dWlim = dWlim*sign((1.0d0),dWl)
            endif
            dW(i0,i1,i2,iv) = dWlim
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine EXTPRESERVINGVANLEERLIMITERF(
     & dW
     & ,idWlo0,idWlo1,idWlo2
     & ,idWhi0,idWhi1,idWhi2
     & ,ndWcomp
     & ,dWleft
     & ,idWleftlo0,idWleftlo1,idWleftlo2
     & ,idWlefthi0,idWlefthi1,idWlefthi2
     & ,ndWleftcomp
     & ,dWright
     & ,idWrightlo0,idWrightlo1,idWrightlo2
     & ,idWrighthi0,idWrighthi1,idWrighthi2
     & ,ndWrightcomp
     & ,numSlopes
     & ,idir
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ndWcomp
      integer idWlo0,idWlo1,idWlo2
      integer idWhi0,idWhi1,idWhi2
      REAL*8 dW(
     & idWlo0:idWhi0,
     & idWlo1:idWhi1,
     & idWlo2:idWhi2,
     & 0:ndWcomp-1)
      integer ndWleftcomp
      integer idWleftlo0,idWleftlo1,idWleftlo2
      integer idWlefthi0,idWlefthi1,idWlefthi2
      REAL*8 dWleft(
     & idWleftlo0:idWlefthi0,
     & idWleftlo1:idWlefthi1,
     & idWleftlo2:idWlefthi2,
     & 0:ndWleftcomp-1)
      integer ndWrightcomp
      integer idWrightlo0,idWrightlo1,idWrightlo2
      integer idWrighthi0,idWrighthi1,idWrighthi2
      REAL*8 dWright(
     & idWrightlo0:idWrighthi0,
     & idWrightlo1:idWrighthi1,
     & idWrightlo2:idWrighthi2,
     & 0:ndWrightcomp-1)
      integer numSlopes
      integer idir
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      integer iv
      REAL*8 dWL, dWLL, dWR, dWRR, dWC, dWlim
      REAL*8 dp1, dp2, dpmin
      REAL*8 dW2L, dW2C, dW2R, dW2lim
      REAL*8 sign2, sign1
      REAL*8 cvl, dWvl
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      cvl = (5.0d0) * (0.250d0)
      do iv = 0,numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            dWC = dW (i0,i1,i2, iv)
            dWL = dWleft (i0,i1,i2, iv)
            dWLL = dWleft (i0 -ioff0,i1 -ioff1,i2 -ioff2, iv)
            dWR = dWright(i0,i1,i2, iv)
            dWRR = dWright(i0 +ioff0,i1 +ioff1,i2 +ioff2, iv)
            dp1 = dWL * dWR
            dp2 = dWLL * dWRR
            dpmin = min(dp1, dp2)
            if (dpmin .lt. 0) then
               dW2L = dWL - dWLL
               dW2C = (dWR - dWL) * (0.500d0)
               dW2R = dWRR - dWR
               sign2 = sign((1.0d0), dW2C)
               dW2lim = min(abs(dW2C),
     & max(sign2*dW2L, (0.0d0)),
     & max(sign2*dW2R, (0.0d0)))
               dWvl = cvl * (3.0d0) * (0.500d0) * dW2lim
               if (sign2 * dWC .lt. 0.0) then
                  dWlim = min(dWvl, (2.0d0) * abs(dWL))
               else
                  dWlim = min(dWvl, (2.0d0) * abs(dWR))
               endif
            else
               dWlim = (2.0d0) * min(abs(dWL), abs(dWR))
            endif
            sign1 = sign((1.0d0), dWC)
            dW(i0,i1,i2, iv) = sign1 * min(abs(dWC), dWlim)
      enddo
      enddo
      enddo
       enddo
       return
       end
      subroutine PLMNORMALPREDF(
     & dWMinus
     & ,idWMinuslo0,idWMinuslo1,idWMinuslo2
     & ,idWMinushi0,idWMinushi1,idWMinushi2
     & ,ndWMinuscomp
     & ,dWPlus
     & ,idWPluslo0,idWPluslo1,idWPluslo2
     & ,idWPlushi0,idWPlushi1,idWPlushi2
     & ,ndWPluscomp
     & ,dW
     & ,idWlo0,idWlo1,idWlo2
     & ,idWhi0,idWhi1,idWhi2
     & ,ndWcomp
     & ,lambda
     & ,ilambdalo0,ilambdalo1,ilambdalo2
     & ,ilambdahi0,ilambdahi1,ilambdahi2
     & ,nlambdacomp
     & ,dtbydx
     & ,nSlope
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer ndWMinuscomp
      integer idWMinuslo0,idWMinuslo1,idWMinuslo2
      integer idWMinushi0,idWMinushi1,idWMinushi2
      REAL*8 dWMinus(
     & idWMinuslo0:idWMinushi0,
     & idWMinuslo1:idWMinushi1,
     & idWMinuslo2:idWMinushi2,
     & 0:ndWMinuscomp-1)
      integer ndWPluscomp
      integer idWPluslo0,idWPluslo1,idWPluslo2
      integer idWPlushi0,idWPlushi1,idWPlushi2
      REAL*8 dWPlus(
     & idWPluslo0:idWPlushi0,
     & idWPluslo1:idWPlushi1,
     & idWPluslo2:idWPlushi2,
     & 0:ndWPluscomp-1)
      integer ndWcomp
      integer idWlo0,idWlo1,idWlo2
      integer idWhi0,idWhi1,idWhi2
      REAL*8 dW(
     & idWlo0:idWhi0,
     & idWlo1:idWhi1,
     & idWlo2:idWhi2,
     & 0:ndWcomp-1)
      integer nlambdacomp
      integer ilambdalo0,ilambdalo1,ilambdalo2
      integer ilambdahi0,ilambdahi1,ilambdahi2
      REAL*8 lambda(
     & ilambdalo0:ilambdahi0,
     & ilambdalo1:ilambdahi1,
     & ilambdalo2:ilambdahi2,
     & 0:nlambdacomp-1)
      REAL*8 dtbydx
      integer nSlope
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      integer i0,i1,i2
      integer iv
      REAL*8 lmin, lmax, lambdaK
      do iv = 0,nSlope-1
      do i2 = iboxlo2,iboxhi2
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
            lmin = min(lambda(i0,i1,i2,0 ),(0.0d0))
            lmax = max(lambda(i0,i1,i2,nSlope-1),(0.0d0))
            lambdaK = lambda(i0,i1,i2,iv)
            if (lambdaK .gt. 0) then
               dWMinus(i0,i1,i2,iv) = dW(i0,i1,i2,iv) *
     & (-(0.500d0)) * ((1.0d0) + dtbydx * lmin )
               dWPlus (i0,i1,i2,iv) = dW(i0,i1,i2,iv) *
     & (0.500d0) * ((1.0d0) - dtbydx * lambdaK)
            elseif (lambdaK .lt. 0) then
               dWMinus(i0,i1,i2,iv) = dW(i0,i1,i2,iv) *
     & (-(0.500d0)) * ((1.0d0) + dtbydx * lambdaK)
               dWPlus (i0,i1,i2,iv) = dW(i0,i1,i2,iv) *
     & (0.500d0) * ((1.0d0) - dtbydx * lmax )
            else
               dWMinus(i0,i1,i2,iv) = dW(i0,i1,i2,iv) *
     & (-(0.500d0)) * ((1.0d0) + dtbydx * lmin )
               dWPlus (i0,i1,i2,iv) = dW(i0,i1,i2,iv) *
     & (0.500d0) * ((1.0d0) - dtbydx * lmax )
            endif
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine DIVUEDGEF(
     & divu
     & ,idivulo0,idivulo1,idivulo2
     & ,idivuhi0,idivuhi1,idivuhi2
     & ,uNorm
     & ,iuNormlo0,iuNormlo1,iuNormlo2
     & ,iuNormhi0,iuNormhi1,iuNormhi2
     & ,duTan
     & ,iduTanlo0,iduTanlo1,iduTanlo2
     & ,iduTanhi0,iduTanhi1,iduTanhi2
     & ,nduTancomp
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer idivulo0,idivulo1,idivulo2
      integer idivuhi0,idivuhi1,idivuhi2
      REAL*8 divu(
     & idivulo0:idivuhi0,
     & idivulo1:idivuhi1,
     & idivulo2:idivuhi2)
      integer iuNormlo0,iuNormlo1,iuNormlo2
      integer iuNormhi0,iuNormhi1,iuNormhi2
      REAL*8 uNorm(
     & iuNormlo0:iuNormhi0,
     & iuNormlo1:iuNormhi1,
     & iuNormlo2:iuNormhi2)
      integer nduTancomp
      integer iduTanlo0,iduTanlo1,iduTanlo2
      integer iduTanhi0,iduTanhi1,iduTanhi2
      REAL*8 duTan(
     & iduTanlo0:iduTanhi0,
     & iduTanlo1:iduTanhi1,
     & iduTanlo2:iduTanhi2,
     & 0:nduTancomp-1)
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer dimTan
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
         divu(i0,i1,i2) = uNorm(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2)
     & - uNorm(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2)
         do dimTan = 0, 3 -2
            divu(i0,i1,i2) = divu(i0,i1,i2)
     & + (0.500d0)*(duTan(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2,dimTan)
     & + duTan(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2,dimTan))
         enddo
      enddo
      enddo
      enddo
      if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
            divu(i0,i1,i2) = divu(i0 +ioff0,i1 +ioff1,i2 +ioff2)
      enddo
      enddo
      enddo
      endif
      if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
            divu(i0,i1,i2) = divu(i0 -ioff0,i1 -ioff1,i2 -ioff2)
      enddo
      enddo
      enddo
      endif
      return
      end
      subroutine ARTVISCF(
     & F
     & ,iFlo0,iFlo1,iFlo2
     & ,iFhi0,iFhi1,iFhi2
     & ,nFcomp
     & ,U
     & ,iUlo0,iUlo1,iUlo2
     & ,iUhi0,iUhi1,iUhi2
     & ,nUcomp
     & ,divu
     & ,idivulo0,idivulo1,idivulo2
     & ,idivuhi0,idivuhi1,idivuhi2
     & ,coeff
     & ,idir
     & ,ifboxlo0,ifboxlo1,ifboxlo2
     & ,ifboxhi0,ifboxhi1,ifboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nFcomp
      integer iFlo0,iFlo1,iFlo2
      integer iFhi0,iFhi1,iFhi2
      REAL*8 F(
     & iFlo0:iFhi0,
     & iFlo1:iFhi1,
     & iFlo2:iFhi2,
     & 0:nFcomp-1)
      integer nUcomp
      integer iUlo0,iUlo1,iUlo2
      integer iUhi0,iUhi1,iUhi2
      REAL*8 U(
     & iUlo0:iUhi0,
     & iUlo1:iUhi1,
     & iUlo2:iUhi2,
     & 0:nUcomp-1)
      integer idivulo0,idivulo1,idivulo2
      integer idivuhi0,idivuhi1,idivuhi2
      REAL*8 divu(
     & idivulo0:idivuhi0,
     & idivulo1:idivuhi1,
     & idivulo2:idivuhi2)
      REAL*8 coeff
      integer idir
      integer ifboxlo0,ifboxlo1,ifboxlo2
      integer ifboxhi0,ifboxhi1,ifboxhi2
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer iv
      REAL*8 dv, uLo, uHi
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      do iv = 0, nUcomp - 1
      do i2 = ifboxlo2,ifboxhi2
      do i1 = ifboxlo1,ifboxhi1
      do i0 = ifboxlo0,ifboxhi0
            dv = divu(i0,i1,i2)
            if (dv .lt. 0) then
               uLo = U(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv)
               uHi = U(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, iv)
               F(i0,i1,i2, iv) = F(i0,i1,i2, iv) +
     & coeff * dv * (uHi - uLo)
            endif
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine PPMLIMITERF(
     & dWMinus
     & ,idWMinuslo0,idWMinuslo1,idWMinuslo2
     & ,idWMinushi0,idWMinushi1,idWMinushi2
     & ,ndWMinuscomp
     & ,dWPlus
     & ,idWPluslo0,idWPluslo1,idWPluslo2
     & ,idWPlushi0,idWPlushi1,idWPlushi2
     & ,ndWPluscomp
     & ,numSlopes
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer ndWMinuscomp
      integer idWMinuslo0,idWMinuslo1,idWMinuslo2
      integer idWMinushi0,idWMinushi1,idWMinushi2
      REAL*8 dWMinus(
     & idWMinuslo0:idWMinushi0,
     & idWMinuslo1:idWMinushi1,
     & idWMinuslo2:idWMinushi2,
     & 0:ndWMinuscomp-1)
      integer ndWPluscomp
      integer idWPluslo0,idWPluslo1,idWPluslo2
      integer idWPlushi0,idWPlushi1,idWPlushi2
      REAL*8 dWPlus(
     & idWPluslo0:idWPlushi0,
     & idWPluslo1:idWPlushi1,
     & idWPluslo2:idWPlushi2,
     & 0:ndWPluscomp-1)
      integer numSlopes
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      integer i0,i1,i2
      integer iv
      REAL*8 dWl,dWh,dWc,d2W,s
      do iv = 0, numSlopes - 1
      do i2 = iboxlo2,iboxhi2
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
            dWl = dWMinus(i0,i1,i2, iv)
            dWh = dWPlus (i0,i1,i2, iv)
            if (dWl * dWh .lt. 0) then
               dWc = (dWh + dWl) * (0.500d0)
               d2W = dWh - dWl
               s = sign((1.0d0),dWc)
               if (dWc * d2W .gt. 0) then
                  dWPlus (i0,i1,i2,iv) =
     & s * min(-(2.0d0) * s * dWl, s * dWh)
               else
                  dWMinus(i0,i1,i2,iv) =
     & s * min(s * dWl, -(2.0d0) * s * dWh)
               endif
            else
               dWPlus (i0,i1,i2, iv) = 0
               dWMinus(i0,i1,i2, iv) = 0
            endif
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine COLELLASEKORALIMITERF(
     & dWMinus
     & ,idWMinuslo0,idWMinuslo1,idWMinuslo2
     & ,idWMinushi0,idWMinushi1,idWMinushi2
     & ,ndWMinuscomp
     & ,dWPlus
     & ,idWPluslo0,idWPluslo1,idWPluslo2
     & ,idWPlushi0,idWPlushi1,idWPlushi2
     & ,ndWPluscomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,diffW
     & ,idiffWlo0,idiffWlo1,idiffWlo2
     & ,idiffWhi0,idiffWhi1,idiffWhi2
     & ,ndiffWcomp
     & ,d2W
     & ,id2Wlo0,id2Wlo1,id2Wlo2
     & ,id2Whi0,id2Whi1,id2Whi2
     & ,nd2Wcomp
     & ,dW2fcf
     & ,idW2fcflo0,idW2fcflo1,idW2fcflo2
     & ,idW2fcfhi0,idW2fcfhi1,idW2fcfhi2
     & ,ndW2fcfcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & ,limitC
     & ,eps
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ndWMinuscomp
      integer idWMinuslo0,idWMinuslo1,idWMinuslo2
      integer idWMinushi0,idWMinushi1,idWMinushi2
      REAL*8 dWMinus(
     & idWMinuslo0:idWMinushi0,
     & idWMinuslo1:idWMinushi1,
     & idWMinuslo2:idWMinushi2,
     & 0:ndWMinuscomp-1)
      integer ndWPluscomp
      integer idWPluslo0,idWPluslo1,idWPluslo2
      integer idWPlushi0,idWPlushi1,idWPlushi2
      REAL*8 dWPlus(
     & idWPluslo0:idWPlushi0,
     & idWPluslo1:idWPlushi1,
     & idWPluslo2:idWPlushi2,
     & 0:ndWPluscomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer ndiffWcomp
      integer idiffWlo0,idiffWlo1,idiffWlo2
      integer idiffWhi0,idiffWhi1,idiffWhi2
      REAL*8 diffW(
     & idiffWlo0:idiffWhi0,
     & idiffWlo1:idiffWhi1,
     & idiffWlo2:idiffWhi2,
     & 0:ndiffWcomp-1)
      integer nd2Wcomp
      integer id2Wlo0,id2Wlo1,id2Wlo2
      integer id2Whi0,id2Whi1,id2Whi2
      REAL*8 d2W(
     & id2Wlo0:id2Whi0,
     & id2Wlo1:id2Whi1,
     & id2Wlo2:id2Whi2,
     & 0:nd2Wcomp-1)
      integer ndW2fcfcomp
      integer idW2fcflo0,idW2fcflo1,idW2fcflo2
      integer idW2fcfhi0,idW2fcfhi1,idW2fcfhi2
      REAL*8 dW2fcf(
     & idW2fcflo0:idW2fcfhi0,
     & idW2fcflo1:idW2fcfhi1,
     & idW2fcflo2:idW2fcfhi2,
     & 0:ndW2fcfcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      REAL*8 limitC
      REAL*8 eps
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      integer iv
      REAL*8 WC, dWM, dWP, WL, WR, dWL, dWR
      REAL*8 atfcf, d2Wlim, rho
      REAL*8 d2WL, d2WC, d2WR
      REAL*8 sd2WL, sd2WC, sd2WR, sd2fcf
      REAL*8 diffWL, diffWR, dWminA, dWminF
      logical extrem, bigM, bigP
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do iv = 0,numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            dWM = dWMinus(i0,i1,i2, iv)
            dWP = dWPlus (i0,i1,i2, iv)
            extrem = .false.
            if (dWM * dWP .ge. 0) then
               extrem = .true.
            else
               bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
               bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
               if (bigM .or. bigP) then
                  WL = W(i0 -ioff0,i1 -ioff1,i2 -ioff2, iv)
                  WC = W(i0,i1,i2, iv)
                  WR = W(i0 +ioff0,i1 +ioff1,i2 +ioff2, iv)
                  dWL = WC - WL
                  dWR = WR - WC
                  diffWL = diffW(i0 -ioff0,i1 -ioff1,i2 -ioff2, iv)
                  diffWR = diffW(i0 +ioff0,i1 +ioff1,i2 +ioff2, iv)
                  dWminA = min(abs(dWL), abs(dWR))
                  dWminF = min(abs(diffWL), abs(diffWR))
                  if ( ( (dWminA .ge. dWminF) .and.
     & (dWL * dWR .le. 0) ) .or.
     & ( (dWminF .gt. dWminA) .and.
     & (diffWL * diffWR .le. 0) ) ) then
                     extrem = .true.
                  else
                     if (bigM) then
                        dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
                     endif
                     if (bigP) then
                        dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
                     endif
                  endif
               endif
            endif
            if (extrem) then
               d2WL = d2W(i0 -ioff0,i1 -ioff1,i2 -ioff2, iv)
               d2WC = d2W(i0,i1,i2, iv)
               d2WR = d2W(i0 +ioff0,i1 +ioff1,i2 +ioff2, iv)
               if ((d2WC - d2WL) * (d2WR - d2WC) .lt. 0) then
                  atfcf = dW2fcf(i0,i1,i2, iv)
                  if (abs(atfcf) .lt. eps) then
                     rho = 0
                  else
                     sd2WL = sign((1.0d0), d2WL)
                     sd2WC = sign((1.0d0), d2WC)
                     sd2WR = sign((1.0d0), d2WR)
                     sd2fcf = sign((1.0d0), atfcf)
                     if ((sd2WC .eq. sd2WL) .and.
     & (sd2WC .eq. sd2WR) .and.
     & (sd2WC .eq. sd2fcf)) then
                        d2Wlim = sd2WC *
     & min(abs(atfcf),
     & limitC * abs(d2WC),
     & limitC * abs(d2WL),
     & limitC * abs(d2WR))
                        rho = d2Wlim / atfcf
                     else
                        rho = 0
                     endif
                  endif
                  dWPlus (i0,i1,i2, iv) = dWP * rho
                  dWMinus(i0,i1,i2, iv) = dWM * rho
               endif
            endif
      enddo
      enddo
      enddo
         if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               dWM = dWMinus(i0,i1,i2, iv)
               dWP = dWPlus (i0,i1,i2, iv)
               extrem = .false.
               if (dWM * dWP .ge. 0) then
                  extrem = .true.
               else
                  bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
                  bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
                  if (bigM) then
                     dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
                  endif
                  if (bigP) then
                     dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
                  endif
               endif
      enddo
      enddo
      enddo
         endif
         if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               dWM = dWMinus(i0,i1,i2, iv)
               dWP = dWPlus (i0,i1,i2, iv)
               extrem = .false.
               if (dWM * dWP .ge. 0) then
                  extrem = .true.
               else
                  bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
                  bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
                  if (bigM) then
                     dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
                  endif
                  if (bigP) then
                     dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
                  endif
               endif
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine PPMFACEVALUESF(
     & WFace
     & ,iWFacelo0,iWFacelo1,iWFacelo2
     & ,iWFacehi0,iWFacehi1,iWFacehi2
     & ,nWFacecomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,dW
     & ,idWlo0,idWlo1,idWlo2
     & ,idWhi0,idWhi1,idWhi2
     & ,ndWcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nWFacecomp
      integer iWFacelo0,iWFacelo1,iWFacelo2
      integer iWFacehi0,iWFacehi1,iWFacehi2
      REAL*8 WFace(
     & iWFacelo0:iWFacehi0,
     & iWFacelo1:iWFacehi1,
     & iWFacelo2:iWFacehi2,
     & 0:nWFacecomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer ndWcomp
      integer idWlo0,idWlo1,idWlo2
      integer idWhi0,idWhi1,idWhi2
      REAL*8 dW(
     & idWlo0:idWhi0,
     & idWlo1:idWhi1,
     & idWlo2:idWhi2,
     & 0:ndWcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer iv
      REAL*8 WLeft,WRight
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      do iv = 0,numSlopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            WRight = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, iv)
     & - dW(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2,iv) / (3.0d0)
            WLeft = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv)
     & + dW(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv) / (3.0d0)
            WFace(i0,i1,i2, iv) = (WLeft + WRight) * (0.500d0)
      enddo
      enddo
      enddo
      enddo
      if (hasLo .eq. 1) then
         do iv = 0,numSlopes-1
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               WRight = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2,iv)
     & - dW(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2,iv) * (0.500d0)
               WFace(i0,i1,i2, iv) = WRight
      enddo
      enddo
      enddo
         enddo
      endif
      if (hasHi .eq. 1) then
         do iv = 0,numSlopes-1
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               WLeft = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv)
     & + dW(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv) * (0.500d0)
               WFace(i0,i1,i2,iv) = WLeft
      enddo
      enddo
      enddo
         enddo
      endif
      return
      end
      subroutine PPMNORMALPREDF(
     & dWMinus
     & ,idWMinuslo0,idWMinuslo1,idWMinuslo2
     & ,idWMinushi0,idWMinushi1,idWMinushi2
     & ,ndWMinuscomp
     & ,dWPlus
     & ,idWPluslo0,idWPluslo1,idWPluslo2
     & ,idWPlushi0,idWPlushi1,idWPlushi2
     & ,ndWPluscomp
     & ,lambda
     & ,ilambdalo0,ilambdalo1,ilambdalo2
     & ,ilambdahi0,ilambdahi1,ilambdahi2
     & ,nlambdacomp
     & ,dtbydx
     & ,nSlope
     & ,iboxlo0,iboxlo1,iboxlo2
     & ,iboxhi0,iboxhi1,iboxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer ndWMinuscomp
      integer idWMinuslo0,idWMinuslo1,idWMinuslo2
      integer idWMinushi0,idWMinushi1,idWMinushi2
      REAL*8 dWMinus(
     & idWMinuslo0:idWMinushi0,
     & idWMinuslo1:idWMinushi1,
     & idWMinuslo2:idWMinushi2,
     & 0:ndWMinuscomp-1)
      integer ndWPluscomp
      integer idWPluslo0,idWPluslo1,idWPluslo2
      integer idWPlushi0,idWPlushi1,idWPlushi2
      REAL*8 dWPlus(
     & idWPluslo0:idWPlushi0,
     & idWPluslo1:idWPlushi1,
     & idWPluslo2:idWPlushi2,
     & 0:ndWPluscomp-1)
      integer nlambdacomp
      integer ilambdalo0,ilambdalo1,ilambdalo2
      integer ilambdahi0,ilambdahi1,ilambdahi2
      REAL*8 lambda(
     & ilambdalo0:ilambdahi0,
     & ilambdalo1:ilambdahi1,
     & ilambdalo2:ilambdahi2,
     & 0:nlambdacomp-1)
      REAL*8 dtbydx
      integer nSlope
      integer iboxlo0,iboxlo1,iboxlo2
      integer iboxhi0,iboxhi1,iboxhi2
      integer i0,i1,i2
      integer iv
      REAL*8 sigMinus,sigPlus,sigmin,sigmax,lambdaK,dWl,dWh
      do i2 = iboxlo2,iboxhi2
      do i1 = iboxlo1,iboxhi1
      do i0 = iboxlo0,iboxhi0
         sigmin = lambda(i0,i1,i2, 0)*dtbydx
         sigmin = min(sigmin,(0.0d0))
         sigmin = -sigmin
         sigmax = lambda(i0,i1,i2, nSlope-1)*dtbydx
         sigmax = max(sigmax,(0.0d0))
         do iv = 0,nSlope - 1
            lambdaK = lambda(i0,i1,i2, iv)
            if (lambdaK .gt. 0) then
               sigMinus = sigmin
               sigPlus = lambdaK*dtbydx
            else
               sigMinus = -lambdaK*dtbydx
               sigPlus = sigmax
            endif
            dWl = dWMinus(i0,i1,i2,iv)
            dWh = dWPlus (i0,i1,i2,iv)
            dWMinus(i0,i1,i2, iv) =
     & dWl + sigMinus * ((dWh - dWl)
     & - (dWh + dWl) * ((3.0d0) - (2.0d0)*sigMinus)) * (0.500d0)
            dWPlus (i0,i1,i2, iv) =
     & dWh + sigPlus * ((dWl - dWh)
     & - (dWh + dWl) * ((3.0d0) - (2.0d0)*sigPlus )) * (0.500d0)
         enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine GETSECONDDIFF(
     & d2W
     & ,id2Wlo0,id2Wlo1,id2Wlo2
     & ,id2Whi0,id2Whi1,id2Whi2
     & ,nd2Wcomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nd2Wcomp
      integer id2Wlo0,id2Wlo1,id2Wlo2
      integer id2Whi0,id2Whi1,id2Whi2
      REAL*8 d2W(
     & id2Wlo0:id2Whi0,
     & id2Wlo1:id2Whi1,
     & id2Wlo2:id2Whi2,
     & 0:nd2Wcomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      integer iv
      REAL*8 WC, WL, WR, dWL, dWR
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do iv = 0, numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            WL = W(i0 -ioff0,i1 -ioff1,i2 -ioff2, iv)
            WC = W(i0,i1,i2, iv)
            WR = W(i0 +ioff0,i1 +ioff1,i2 +ioff2, iv)
            dWL = WC - WL
            dWR = WR - WC
            d2W(i0,i1,i2, iv) = dWR - dWL
      enddo
      enddo
      enddo
         if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               d2W(i0,i1,i2, iv) =
     & d2W(i0 +ioff0,i1 +ioff1,i2 +ioff2, iv)
      enddo
      enddo
      enddo
         endif
         if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               d2W(i0,i1,i2, iv) =
     & d2W(i0 -ioff0,i1 -ioff1,i2 -ioff2, iv)
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine GETD2CELL(
     & d2W
     & ,id2Wlo0,id2Wlo1,id2Wlo2
     & ,id2Whi0,id2Whi1,id2Whi2
     & ,nd2Wcomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nd2Wcomp
      integer id2Wlo0,id2Wlo1,id2Wlo2
      integer id2Whi0,id2Whi1,id2Whi2
      REAL*8 d2W(
     & id2Wlo0:id2Whi0,
     & id2Wlo1:id2Whi1,
     & id2Wlo2:id2Whi2,
     & 0:nd2Wcomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer ioff0,ioff1,ioff2
      integer lvar
      REAL*8 WL, WR, WC
      ioff0=CHF_ID(0, idir)
      ioff1=CHF_ID(1, idir)
      ioff2=CHF_ID(2, idir)
      do lvar = 0, numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            WL = W(i0 -ioff0,i1 -ioff1,i2 -ioff2, lvar)
            WC = W(i0,i1,i2, lvar)
            WR = W(i0 +ioff0,i1 +ioff1,i2 +ioff2, lvar)
            d2W(i0,i1,i2, lvar) = (WR - WC) - (WC - WL)
      enddo
      enddo
      enddo
         if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               d2W(i0,i1,i2, lvar) =
     & d2W(i0 +ioff0,i1 +ioff1,i2 +ioff2, lvar)
      enddo
      enddo
      enddo
         endif
         if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               d2W(i0,i1,i2, lvar) =
     & d2W(i0 -ioff0,i1 -ioff1,i2 -ioff2, lvar)
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine GETD2LIMFACE(
     & d2Wlim
     & ,id2Wlimlo0,id2Wlimlo1,id2Wlimlo2
     & ,id2Wlimhi0,id2Wlimhi1,id2Wlimhi2
     & ,nd2Wlimcomp
     & ,d2Wc
     & ,id2Wclo0,id2Wclo1,id2Wclo2
     & ,id2Wchi0,id2Wchi1,id2Wchi2
     & ,nd2Wccomp
     & ,d2Wcfc
     & ,id2Wcfclo0,id2Wcfclo1,id2Wcfclo2
     & ,id2Wcfchi0,id2Wcfchi1,id2Wcfchi2
     & ,nd2Wcfccomp
     & ,numSlopes
     & ,idir
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & ,limitC
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nd2Wlimcomp
      integer id2Wlimlo0,id2Wlimlo1,id2Wlimlo2
      integer id2Wlimhi0,id2Wlimhi1,id2Wlimhi2
      REAL*8 d2Wlim(
     & id2Wlimlo0:id2Wlimhi0,
     & id2Wlimlo1:id2Wlimhi1,
     & id2Wlimlo2:id2Wlimhi2,
     & 0:nd2Wlimcomp-1)
      integer nd2Wccomp
      integer id2Wclo0,id2Wclo1,id2Wclo2
      integer id2Wchi0,id2Wchi1,id2Wchi2
      REAL*8 d2Wc(
     & id2Wclo0:id2Wchi0,
     & id2Wclo1:id2Wchi1,
     & id2Wclo2:id2Wchi2,
     & 0:nd2Wccomp-1)
      integer nd2Wcfccomp
      integer id2Wcfclo0,id2Wcfclo1,id2Wcfclo2
      integer id2Wcfchi0,id2Wcfchi1,id2Wcfchi2
      REAL*8 d2Wcfc(
     & id2Wcfclo0:id2Wcfchi0,
     & id2Wcfclo1:id2Wcfchi1,
     & id2Wcfclo2:id2Wcfchi2,
     & 0:nd2Wcfccomp-1)
      integer numSlopes
      integer idir
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      REAL*8 limitC
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer lvar
      REAL*8 d2WL, d2WR, atcfc
      REAL*8 sd2WL, sd2WR, sd2cfc
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      do lvar = 0, numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            d2WL = d2Wc(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
            d2WR = d2Wc(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
            atcfc = d2Wcfc(i0,i1,i2, lvar)
            sd2WL = sign((1.0d0), d2WL)
            sd2WR = sign((1.0d0), d2WR)
            sd2cfc = sign((1.0d0), atcfc)
            if ((sd2WL .eq. sd2cfc) .and. (sd2WR .eq. sd2cfc)) then
               d2Wlim(i0,i1,i2, lvar) = sd2cfc *
     & min(limitC * min(abs(d2WL), abs(d2WR)),
     & abs(atcfc))
            else
               d2Wlim(i0,i1,i2, lvar) = 0
            endif
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine COLELLASEKORAFACELIMITER(
     & Wface
     & ,iWfacelo0,iWfacelo1,iWfacelo2
     & ,iWfacehi0,iWfacehi1,iWfacehi2
     & ,nWfacecomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,d2Wc
     & ,id2Wclo0,id2Wclo1,id2Wclo2
     & ,id2Wchi0,id2Wchi1,id2Wchi2
     & ,nd2Wccomp
     & ,numSlopes
     & ,idir
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & ,limitC
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nWfacecomp
      integer iWfacelo0,iWfacelo1,iWfacelo2
      integer iWfacehi0,iWfacehi1,iWfacehi2
      REAL*8 Wface(
     & iWfacelo0:iWfacehi0,
     & iWfacelo1:iWfacehi1,
     & iWfacelo2:iWfacehi2,
     & 0:nWfacecomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer nd2Wccomp
      integer id2Wclo0,id2Wclo1,id2Wclo2
      integer id2Wchi0,id2Wchi1,id2Wchi2
      REAL*8 d2Wc(
     & id2Wclo0:id2Wchi0,
     & id2Wclo1:id2Wchi1,
     & id2Wclo2:id2Wchi2,
     & 0:nd2Wccomp-1)
      integer numSlopes
      integer idir
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      REAL*8 limitC
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer lvar
      REAL*8 Wf, WL, WR, d2Wlim, dp
      REAL*8 dWL, dWR, d2WL, d2WR, d2Wcfc
      REAL*8 sd2WL, sd2WR, sd2cfc
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      do lvar = 0, numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            Wf = Wface(i0,i1,i2, lvar)
            WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
            WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
            dWR = WR - Wf
            dWL = Wf - WL
            dp = dWR * dWL
            if (dp .lt. 0) then
               d2WL = d2Wc(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
               d2WR = d2Wc(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
               d2Wcfc = (3.0d0) * (dWR - dWL)
               if ((d2Wcfc - d2WL) * (d2WR - d2Wcfc) .lt. 0) then
                  sd2WL = sign((1.0d0), d2WL)
                  sd2WR = sign((1.0d0), d2WR)
                  sd2cfc = sign((1.0d0), d2Wcfc)
                  if ((sd2WL .eq. sd2cfc) .and.
     & (sd2WR .eq. sd2cfc)) then
                     d2Wlim = sd2cfc *
     & min(limitC * min(abs(d2WL), abs(d2WR)),
     & abs(d2Wcfc))
                  else
                     d2Wlim = 0
                  endif
                  Wface(i0,i1,i2, lvar) =
     & (WL + WR) * (0.500d0) - d2Wlim / (6.0d0)
               endif
            endif
      enddo
      enddo
      enddo
      enddo
      return
      end
      subroutine FOURTHINTERPFACES(
     & Wface
     & ,iWfacelo0,iWfacelo1,iWfacelo2
     & ,iWfacehi0,iWfacehi1,iWfacehi2
     & ,nWfacecomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,inextLoBoxlo0,inextLoBoxlo1,inextLoBoxlo2
     & ,inextLoBoxhi0,inextLoBoxhi1,inextLoBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,inextHiBoxlo0,inextHiBoxlo1,inextHiBoxlo2
     & ,inextHiBoxhi0,inextHiBoxhi1,inextHiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nWfacecomp
      integer iWfacelo0,iWfacelo1,iWfacelo2
      integer iWfacehi0,iWfacehi1,iWfacehi2
      REAL*8 Wface(
     & iWfacelo0:iWfacehi0,
     & iWfacelo1:iWfacehi1,
     & iWfacelo2:iWfacehi2,
     & 0:nWfacecomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer inextLoBoxlo0,inextLoBoxlo1,inextLoBoxlo2
      integer inextLoBoxhi0,inextLoBoxhi1,inextLoBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer inextHiBoxlo0,inextHiBoxlo1,inextHiBoxlo2
      integer inextHiBoxhi0,inextHiBoxhi1,inextHiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2c1Lo0,f2c1Lo1,f2c1Lo2
      integer f2c2Lo0,f2c2Lo1,f2c2Lo2
      integer f2c3Lo0,f2c3Lo1,f2c3Lo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer f2c1Hi0,f2c1Hi1,f2c1Hi2
      integer f2c2Hi0,f2c2Hi1,f2c2Hi2
      integer f2c3Hi0,f2c3Hi1,f2c3Hi2
      integer lvar
      REAL*8 WL, WR, WLL, WRR, WLLL, WRRR, WLLLL, WRRRR
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2c1Lo0= -2*CHF_ID(0, idir)
      f2c1Lo1= -2*CHF_ID(1, idir)
      f2c1Lo2= -2*CHF_ID(2, idir)
      f2c2Lo0= -3*CHF_ID(0, idir)
      f2c2Lo1= -3*CHF_ID(1, idir)
      f2c2Lo2= -3*CHF_ID(2, idir)
      f2c3Lo0= -4*CHF_ID(0, idir)
      f2c3Lo1= -4*CHF_ID(1, idir)
      f2c3Lo2= -4*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      f2c1Hi0= 1*CHF_ID(0, idir)
      f2c1Hi1= 1*CHF_ID(1, idir)
      f2c1Hi2= 1*CHF_ID(2, idir)
      f2c2Hi0= 2*CHF_ID(0, idir)
      f2c2Hi1= 2*CHF_ID(1, idir)
      f2c2Hi2= 2*CHF_ID(2, idir)
      f2c3Hi0= 3*CHF_ID(0, idir)
      f2c3Hi1= 3*CHF_ID(1, idir)
      f2c3Hi2= 3*CHF_ID(2, idir)
      do lvar = 0, numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            WLL = W(i0 +f2c1Lo0,i1 +f2c1Lo1,i2 +f2c1Lo2, lvar)
            WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
            WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
            WRR = W(i0 +f2c1Hi0,i1 +f2c1Hi1,i2 +f2c1Hi2, lvar)
            Wface(i0,i1,i2, lvar) =
     & ((7.0d0) * (WL + WR) - (WLL + WRR)) / (12.0d0)
      enddo
      enddo
      enddo
         if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
               WRR = W(i0 +f2c1Hi0,i1 +f2c1Hi1,i2 +f2c1Hi2, lvar)
               WRRR = W(i0 +f2c2Hi0,i1 +f2c2Hi1,i2 +f2c2Hi2, lvar)
               WRRRR = W(i0 +f2c3Hi0,i1 +f2c3Hi1,i2 +f2c3Hi2, lvar)
               Wface(i0,i1,i2, lvar) =
     & ((((20.0d0) + (5.0d0))*WR - ((20.0d0) + (3.0d0))*WRR)
     & + (((10.0d0) + (3.0d0))*WRRR - (3.0d0)*WRRRR)) / (12.0d0)
      enddo
      enddo
      enddo
      do i2 = inextLoBoxlo2,inextLoBoxhi2
      do i1 = inextLoBoxlo1,inextLoBoxhi1
      do i0 = inextLoBoxlo0,inextLoBoxhi0
               WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
               WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
               WRR = W(i0 +f2c1Hi0,i1 +f2c1Hi1,i2 +f2c1Hi2, lvar)
               WRRR = W(i0 +f2c2Hi0,i1 +f2c2Hi1,i2 +f2c2Hi2, lvar)
               Wface(i0,i1,i2, lvar) =
     & ((3.0d0)*WL + ((10.0d0) + (3.0d0))*WR - (5.0d0)*WRR + WRRR) /
     & (12.0d0)
      enddo
      enddo
      enddo
         endif
         if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
               WLL = W(i0 +f2c1Lo0,i1 +f2c1Lo1,i2 +f2c1Lo2, lvar)
               WLLL = W(i0 +f2c2Lo0,i1 +f2c2Lo1,i2 +f2c2Lo2, lvar)
               WLLLL = W(i0 +f2c3Lo0,i1 +f2c3Lo1,i2 +f2c3Lo2, lvar)
               Wface(i0,i1,i2, lvar) =
     & ((((20.0d0) + (5.0d0))*WL - ((20.0d0) + (3.0d0))*WLL)
     & + (((10.0d0) + (3.0d0))*WLLL - (3.0d0)*WLLLL)) / (12.0d0)
      enddo
      enddo
      enddo
      do i2 = inextHiBoxlo2,inextHiBoxhi2
      do i1 = inextHiBoxlo1,inextHiBoxhi1
      do i0 = inextHiBoxlo0,inextHiBoxhi0
               WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
               WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
               WLL = W(i0 +f2c1Lo0,i1 +f2c1Lo1,i2 +f2c1Lo2, lvar)
               WLLL = W(i0 +f2c2Lo0,i1 +f2c2Lo1,i2 +f2c2Lo2, lvar)
               Wface(i0,i1,i2, lvar) =
     & ((3.0d0)*WR + ((10.0d0) + (3.0d0))*WL - (5.0d0)*WLL + WLLL) /
     & (12.0d0)
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine SECONDINTERPFACES(
     & Wface
     & ,iWfacelo0,iWfacelo1,iWfacelo2
     & ,iWfacehi0,iWfacehi1,iWfacehi2
     & ,nWfacecomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nWfacecomp
      integer iWfacelo0,iWfacelo1,iWfacelo2
      integer iWfacehi0,iWfacehi1,iWfacehi2
      REAL*8 Wface(
     & iWfacelo0:iWfacehi0,
     & iWfacelo1:iWfacehi1,
     & iWfacelo2:iWfacehi2,
     & 0:nWfacecomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2c1Lo0,f2c1Lo1,f2c1Lo2
      integer f2c2Lo0,f2c2Lo1,f2c2Lo2
      integer f2c3Lo0,f2c3Lo1,f2c3Lo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer f2c1Hi0,f2c1Hi1,f2c1Hi2
      integer f2c2Hi0,f2c2Hi1,f2c2Hi2
      integer f2c3Hi0,f2c3Hi1,f2c3Hi2
      integer lvar
      REAL*8 WL, WR, WLL, WRR, WLLL, WRRR, WLLLL, WRRRR
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2c1Lo0= -2*CHF_ID(0, idir)
      f2c1Lo1= -2*CHF_ID(1, idir)
      f2c1Lo2= -2*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      f2c1Hi0= 1*CHF_ID(0, idir)
      f2c1Hi1= 1*CHF_ID(1, idir)
      f2c1Hi2= 1*CHF_ID(2, idir)
      do lvar = 0, numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            WLL = W(i0 +f2c1Lo0,i1 +f2c1Lo1,i2 +f2c1Lo2, lvar)
            WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
            WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
            WRR = W(i0 +f2c1Hi0,i1 +f2c1Hi1,i2 +f2c1Hi2, lvar)
            Wface(i0,i1,i2, lvar) = (WL + WR) / (2.0d0)
      enddo
      enddo
      enddo
         if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, lvar)
               WRR = W(i0 +f2c1Hi0,i1 +f2c1Hi1,i2 +f2c1Hi2, lvar)
               Wface(i0,i1,i2, lvar) = ((3.0d0)*WR - WRR) / (2.0d0)
      enddo
      enddo
      enddo
         endif
         if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, lvar)
               WLL = W(i0 +f2c1Lo0,i1 +f2c1Lo1,i2 +f2c1Lo2, lvar)
               Wface(i0,i1,i2, lvar) = ((3.0d0)*WL - WLL) / (2.0d0)
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine PPMFOURTHFACE(
     & Wface
     & ,iWfacelo0,iWfacelo1,iWfacelo2
     & ,iWfacehi0,iWfacehi1,iWfacehi2
     & ,nWfacecomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,d2W
     & ,id2Wlo0,id2Wlo1,id2Wlo2
     & ,id2Whi0,id2Whi1,id2Whi2
     & ,nd2Wcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer nWfacecomp
      integer iWfacelo0,iWfacelo1,iWfacelo2
      integer iWfacehi0,iWfacehi1,iWfacehi2
      REAL*8 Wface(
     & iWfacelo0:iWfacehi0,
     & iWfacelo1:iWfacehi1,
     & iWfacelo2:iWfacehi2,
     & 0:nWfacecomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer nd2Wcomp
      integer id2Wlo0,id2Wlo1,id2Wlo2
      integer id2Whi0,id2Whi1,id2Whi2
      REAL*8 d2W(
     & id2Wlo0:id2Whi0,
     & id2Wlo1:id2Whi1,
     & id2Wlo2:id2Whi2,
     & 0:nd2Wcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2c1Lo0,f2c1Lo1,f2c1Lo2
      integer f2c2Lo0,f2c2Lo1,f2c2Lo2
      integer f2c3Lo0,f2c3Lo1,f2c3Lo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer f2c1Hi0,f2c1Hi1,f2c1Hi2
      integer f2c2Hi0,f2c2Hi1,f2c2Hi2
      integer f2c3Hi0,f2c3Hi1,f2c3Hi2
      integer iv
      REAL*8 WL, WLL, WLLL, WLLLL
      REAL*8 WR, WRR, WRRR, WRRRR
      REAL*8 d2WL, d2WR
      REAL*8 c0, c1, c2, c3
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2c1Lo0= -2*CHF_ID(0, idir)
      f2c1Lo1= -2*CHF_ID(1, idir)
      f2c1Lo2= -2*CHF_ID(2, idir)
      f2c2Lo0= -3*CHF_ID(0, idir)
      f2c2Lo1= -3*CHF_ID(1, idir)
      f2c2Lo2= -3*CHF_ID(2, idir)
      f2c3Lo0= -4*CHF_ID(0, idir)
      f2c3Lo1= -4*CHF_ID(1, idir)
      f2c3Lo2= -4*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      f2c1Hi0= 1*CHF_ID(0, idir)
      f2c1Hi1= 1*CHF_ID(1, idir)
      f2c1Hi2= 1*CHF_ID(2, idir)
      f2c2Hi0= 2*CHF_ID(0, idir)
      f2c2Hi1= 2*CHF_ID(1, idir)
      f2c2Hi2= 2*CHF_ID(2, idir)
      f2c3Hi0= 3*CHF_ID(0, idir)
      f2c3Hi1= 3*CHF_ID(1, idir)
      f2c3Hi2= 3*CHF_ID(2, idir)
      c0 = (20.0d0) + (7.0d0)
      c1 = -((20.0d0) + (8.0d0))
      c2 = (10.0d0) + (7.0d0)
      c3 = -(4.0d0)
      do iv = 0, numslopes - 1
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
            WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv)
            WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, iv)
            d2WL = d2W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv)
            d2WR = d2W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, iv)
            Wface(i0,i1,i2, iv) = (WL + WR) * (0.500d0)
     & - (d2WL + d2WR) / (12.0d0)
      enddo
      enddo
      enddo
         if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               d2WR = d2W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, iv)
               WR = W(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2, iv)
               WRR = W(i0 +f2c1Hi0,i1 +f2c1Hi1,i2 +f2c1Hi2, iv)
               WRRR = W(i0 +f2c2Hi0,i1 +f2c2Hi1,i2 +f2c2Hi2, iv)
               WRRRR = W(i0 +f2c3Hi0,i1 +f2c3Hi1,i2 +f2c3Hi2, iv)
               Wface(i0,i1,i2, iv) =
     & (c0*WR + c1*WRR + c2*WRRR + c3*WRRRR - d2WR) /
     & (12.0d0)
      enddo
      enddo
      enddo
         endif
         if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               d2WL = d2W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv)
               WL = W(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2, iv)
               WLL = W(i0 +f2c1Lo0,i1 +f2c1Lo1,i2 +f2c1Lo2, iv)
               WLLL = W(i0 +f2c2Lo0,i1 +f2c2Lo1,i2 +f2c2Lo2, iv)
               WLLLL = W(i0 +f2c3Lo0,i1 +f2c3Lo1,i2 +f2c3Lo2, iv)
               Wface(i0,i1,i2, iv) =
     & (c0*WL + c1*WLL + c2*WLLL + c3*WLLLL - d2WL) /
     & (12.0d0)
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
      subroutine HODIVCOEF(
     & divVel
     & ,idivVello0,idivVello1,idivVello2
     & ,idivVelhi0,idivVelhi1,idivVelhi2
     & ,csq
     & ,icsqlo0,icsqlo1,icsqlo2
     & ,icsqhi0,icsqhi1,icsqhi2
     & ,dir
     & ,M0sq
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer idivVello0,idivVello1,idivVello2
      integer idivVelhi0,idivVelhi1,idivVelhi2
      REAL*8 divVel(
     & idivVello0:idivVelhi0,
     & idivVello1:idivVelhi1,
     & idivVello2:idivVelhi2)
      integer icsqlo0,icsqlo1,icsqlo2
      integer icsqhi0,icsqhi1,icsqhi2
      REAL*8 csq(
     & icsqlo0:icsqhi0,
     & icsqlo1:icsqhi1,
     & icsqlo2:icsqhi2)
      integer dir
      REAL*8 M0sq
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2cHi0,f2cHi1,f2cHi2
      integer c2fLo0,c2fLo1,c2fLo2
      integer c2fHi0,c2fHi1,c2fHi2
      REAL*8 csqmin, dvold
      f2cLo0= -1*CHF_ID(0, dir)
      f2cLo1= -1*CHF_ID(1, dir)
      f2cLo2= -1*CHF_ID(2, dir)
      f2cHi0= 0*CHF_ID(0, dir)
      f2cHi1= 0*CHF_ID(1, dir)
      f2cHi2= 0*CHF_ID(2, dir)
      c2fLo0= 0*CHF_ID(0, dir)
      c2fLo1= 0*CHF_ID(1, dir)
      c2fLo2= 0*CHF_ID(2, dir)
      c2fHi0= 1*CHF_ID(0, dir)
      c2fHi1= 1*CHF_ID(1, dir)
      c2fHi2= 1*CHF_ID(2, dir)
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
         csqmin = min(csq(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2),
     & csq(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2) )
         dvold = divVel(i0,i1,i2)
         divVel(i0,i1,i2) = dvold *
     & min(dvold**2/csqmin/M0sq, (1.0d0))
      enddo
      enddo
      enddo
      if (hasLo .ne. 0) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
            csqmin = csq(i0,i1,i2)
            dvold = divVel(i0 +c2fLo0,i1 +c2fLo1,i2 +c2fLo2)
            divVel(i0 +c2fLo0,i1 +c2fLo1,i2 +c2fLo2) = dvold *
     & min(dvold**2/csqmin/M0sq, (1.0d0))
      enddo
      enddo
      enddo
      endif
      if (hasHi .ne. 0) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
            csqmin = csq(i0,i1,i2)
            dvold = divVel(i0 +c2fHi0,i1 +c2fHi1,i2 +c2fHi2)
            divVel(i0 +c2fHi0,i1 +c2fHi1,i2 +c2fHi2) = dvold *
     & min(dvold**2/csqmin/M0sq, (1.0d0))
      enddo
      enddo
      enddo
      endif
      return
      end
      subroutine HIGHORDERDIVCO(
     & divVel
     & ,idivVello0,idivVello1,idivVello2
     & ,idivVelhi0,idivVelhi1,idivVelhi2
     & ,csq
     & ,icsqlo0,icsqlo1,icsqlo2
     & ,icsqhi0,icsqhi1,icsqhi2
     & ,idir
     & ,M0sq
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,hasHi
     & ,icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
     & ,icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer idivVello0,idivVello1,idivVello2
      integer idivVelhi0,idivVelhi1,idivVelhi2
      REAL*8 divVel(
     & idivVello0:idivVelhi0,
     & idivVello1:idivVelhi1,
     & idivVello2:idivVelhi2)
      integer icsqlo0,icsqlo1,icsqlo2
      integer icsqhi0,icsqhi1,icsqhi2
      REAL*8 csq(
     & icsqlo0:icsqhi0,
     & icsqlo1:icsqhi1,
     & icsqlo2:icsqhi2)
      integer idir
      REAL*8 M0sq
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer hasHi
      integer icenterBoxlo0,icenterBoxlo1,icenterBoxlo2
      integer icenterBoxhi0,icenterBoxhi1,icenterBoxhi2
      integer i0,i1,i2
      integer f2cLo0,f2cLo1,f2cLo2
      integer f2cHi0,f2cHi1,f2cHi2
      REAL*8 csqmin, dvold, fac
      f2cLo0= -1*CHF_ID(0, idir)
      f2cLo1= -1*CHF_ID(1, idir)
      f2cLo2= -1*CHF_ID(2, idir)
      f2cHi0= 0*CHF_ID(0, idir)
      f2cHi1= 0*CHF_ID(1, idir)
      f2cHi2= 0*CHF_ID(2, idir)
      do i2 = icenterBoxlo2,icenterBoxhi2
      do i1 = icenterBoxlo1,icenterBoxhi1
      do i0 = icenterBoxlo0,icenterBoxhi0
         csqmin = min(csq(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2),
     & csq(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2))
         dvold = divVel(i0,i1,i2)
         fac = dvold**2/csqmin/M0sq
         if (fac .lt. (1.0d0)) then
            divVel(i0,i1,i2) = dvold * fac
         endif
      enddo
      enddo
      enddo
      if (hasLo .ne. 0) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
            csqmin = csq(i0 +f2cHi0,i1 +f2cHi1,i2 +f2cHi2)
            dvold = divVel(i0,i1,i2)
            fac = dvold**2/csqmin/M0sq
            if (fac .lt. (1.0d0)) then
               divVel(i0,i1,i2) = dvold * fac
            endif
      enddo
      enddo
      enddo
      endif
      if (hasHi .ne. 0) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
            csqmin = csq(i0 +f2cLo0,i1 +f2cLo1,i2 +f2cLo2)
            dvold = divVel(i0,i1,i2)
            fac = dvold**2/csqmin/M0sq
            if (fac .lt. (1.0d0)) then
               divVel(i0,i1,i2) = dvold * fac
            endif
      enddo
      enddo
      enddo
      endif
      return
      end
      subroutine CHECKCUBICLIMITERF(
     & dWMinus
     & ,idWMinuslo0,idWMinuslo1,idWMinuslo2
     & ,idWMinushi0,idWMinushi1,idWMinushi2
     & ,ndWMinuscomp
     & ,dWPlus
     & ,idWPluslo0,idWPluslo1,idWPluslo2
     & ,idWPlushi0,idWPlushi1,idWPlushi2
     & ,ndWPluscomp
     & ,W
     & ,iWlo0,iWlo1,iWlo2
     & ,iWhi0,iWhi1,iWhi2
     & ,nWcomp
     & ,d2W
     & ,id2Wlo0,id2Wlo1,id2Wlo2
     & ,id2Whi0,id2Whi1,id2Whi2
     & ,nd2Wcomp
     & ,dW2fcf
     & ,idW2fcflo0,idW2fcflo1,idW2fcflo2
     & ,idW2fcfhi0,idW2fcfhi1,idW2fcfhi2
     & ,ndW2fcfcomp
     & ,numSlopes
     & ,idir
     & ,iloBoxlo0,iloBoxlo1,iloBoxlo2
     & ,iloBoxhi0,iloBoxhi1,iloBoxhi2
     & ,inextLoBoxlo0,inextLoBoxlo1,inextLoBoxlo2
     & ,inextLoBoxhi0,inextLoBoxhi1,inextLoBoxhi2
     & ,hasLo
     & ,ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
     & ,ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
     & ,inextHiBoxlo0,inextHiBoxlo1,inextHiBoxlo2
     & ,inextHiBoxhi0,inextHiBoxhi1,inextHiBoxhi2
     & ,hasHi
     & ,iinnerCenterBoxlo0,iinnerCenterBoxlo1,iinnerCenterBoxlo2
     & ,iinnerCenterBoxhi0,iinnerCenterBoxhi1,iinnerCenterBoxhi2
     & ,limitC
     & ,C3
     & ,eps
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer CHF_ID(0:5,0:5)
      data CHF_ID/ 1,0,0,0,0,0 ,0,1,0,0,0,0 ,0,0,1,0,0,0 ,0,0,0,1,0,0 ,0
     &,0,0,0,1,0 ,0,0,0,0,0,1 /
      integer ndWMinuscomp
      integer idWMinuslo0,idWMinuslo1,idWMinuslo2
      integer idWMinushi0,idWMinushi1,idWMinushi2
      REAL*8 dWMinus(
     & idWMinuslo0:idWMinushi0,
     & idWMinuslo1:idWMinushi1,
     & idWMinuslo2:idWMinushi2,
     & 0:ndWMinuscomp-1)
      integer ndWPluscomp
      integer idWPluslo0,idWPluslo1,idWPluslo2
      integer idWPlushi0,idWPlushi1,idWPlushi2
      REAL*8 dWPlus(
     & idWPluslo0:idWPlushi0,
     & idWPluslo1:idWPlushi1,
     & idWPluslo2:idWPlushi2,
     & 0:ndWPluscomp-1)
      integer nWcomp
      integer iWlo0,iWlo1,iWlo2
      integer iWhi0,iWhi1,iWhi2
      REAL*8 W(
     & iWlo0:iWhi0,
     & iWlo1:iWhi1,
     & iWlo2:iWhi2,
     & 0:nWcomp-1)
      integer nd2Wcomp
      integer id2Wlo0,id2Wlo1,id2Wlo2
      integer id2Whi0,id2Whi1,id2Whi2
      REAL*8 d2W(
     & id2Wlo0:id2Whi0,
     & id2Wlo1:id2Whi1,
     & id2Wlo2:id2Whi2,
     & 0:nd2Wcomp-1)
      integer ndW2fcfcomp
      integer idW2fcflo0,idW2fcflo1,idW2fcflo2
      integer idW2fcfhi0,idW2fcfhi1,idW2fcfhi2
      REAL*8 dW2fcf(
     & idW2fcflo0:idW2fcfhi0,
     & idW2fcflo1:idW2fcfhi1,
     & idW2fcflo2:idW2fcfhi2,
     & 0:ndW2fcfcomp-1)
      integer numSlopes
      integer idir
      integer iloBoxlo0,iloBoxlo1,iloBoxlo2
      integer iloBoxhi0,iloBoxhi1,iloBoxhi2
      integer inextLoBoxlo0,inextLoBoxlo1,inextLoBoxlo2
      integer inextLoBoxhi0,inextLoBoxhi1,inextLoBoxhi2
      integer hasLo
      integer ihiBoxlo0,ihiBoxlo1,ihiBoxlo2
      integer ihiBoxhi0,ihiBoxhi1,ihiBoxhi2
      integer inextHiBoxlo0,inextHiBoxlo1,inextHiBoxlo2
      integer inextHiBoxhi0,inextHiBoxhi1,inextHiBoxhi2
      integer hasHi
      integer iinnerCenterBoxlo0,iinnerCenterBoxlo1,iinnerCenterBoxlo2
      integer iinnerCenterBoxhi0,iinnerCenterBoxhi1,iinnerCenterBoxhi2
      REAL*8 limitC
      REAL*8 C3
      REAL*8 eps
      integer i0,i1,i2
      integer ii0,ii1,ii2
      integer iv
      REAL*8 WC, dWM, dWP, WLL, WRR, dWL, dWR
      REAL*8 atfcf, d2Wlim, rho
      REAL*8 d2WLL, d2WL, d2WC, d2WR, d2WRR
      REAL*8 d3WLL, d3WL, d3WR, d3WRR, d3Wmax, d3Wmin
      REAL*8 sd2WL, sd2WC, sd2WR, sd2fcf
      REAL*8 dWavgM, dWavgP
      REAL*8 prodE1, prodE2, prodD3
      logical bigM, bigP
      ii0=CHF_ID(0, idir)
      ii1=CHF_ID(1, idir)
      ii2=CHF_ID(2, idir)
      do iv = 0,numslopes - 1
      do i2 = iinnerCenterBoxlo2,iinnerCenterBoxhi2
      do i1 = iinnerCenterBoxlo1,iinnerCenterBoxhi1
      do i0 = iinnerCenterBoxlo0,iinnerCenterBoxhi0
            dWM = dWMinus(i0,i1,i2, iv)
            dWP = dWPlus (i0,i1,i2, iv)
            bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
            bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
            WLL = W(i0 -2*ii0,i1 -2*ii1,i2 -2*ii2, iv)
            WC = W(i0,i1,i2, iv)
            WRR = W(i0 +2*ii0,i1 +2*ii1,i2 +2*ii2, iv)
            dWavgM = WC - WLL
            dWavgP = WRR - WC
            prodE1 = dWM * dWP
            prodE2 = dWavgM * dWavgP
            if ( (prodE1 .ge. 0) .or. (prodE2 .le. 0)) then
               d2WL = d2W(i0 -ii0,i1 -ii1,i2 -ii2, iv)
               d2WC = d2W(i0,i1,i2, iv)
               d2WR = d2W(i0 +ii0,i1 +ii1,i2 +ii2, iv)
               atfcf = dW2fcf(i0,i1,i2, iv)
               rho = 0
               if (abs(atfcf) .ge. eps) then
                  sd2WL = sign((1.0d0), d2WL)
                  sd2WC = sign((1.0d0), d2WC)
                  sd2WR = sign((1.0d0), d2WR)
                  sd2fcf = sign((1.0d0), atfcf)
                  if ( (sd2WL .eq. sd2WC) .and.
     & (sd2WR .eq. sd2WC) .and.
     & (sd2fcf .eq. sd2WC) ) then
                     d2Wlim = sd2WC *
     & min(abs(atfcf),
     & limitC * abs(d2WC),
     & limitC * abs(d2WL),
     & limitC * abs(d2WR))
                     rho = d2Wlim / atfcf
                  endif
               endif
               if (rho .lt. ((1.0d0) - eps)) then
                  d2WLL = d2W(i0 -2*ii0,i1 -2*ii1,i2 -2*ii2, iv)
                  d2WRR = d2W(i0 +2*ii0,i1 +2*ii1,i2 +2*ii2, iv)
                  d3WLL = d2WL - d2WLL
                  d3WL = d2WC - d2WL
                  d3WR = d2WR - d2WC
                  d3WRR = d2WRR - d2WR
                  d3Wmin = min(d3WLL, d3WL, d3WR, d3WRR)
                  d3Wmax = max(d3WLL, d3WL, d3WR, d3WRR)
                  prodD3 = C3 * max(abs(d3Wmax), abs(d3Wmin))
     & - abs(d3Wmax - d3Wmin)
                  if (prodD3 .le. 0) then
                     if (prodE1 .gt. 0) then
                        dWMinus(i0,i1,i2, iv) = dWM * rho
                        dWPlus (i0,i1,i2, iv) = dWP * rho
                     elseif ( bigM ) then
                        dWMinus(i0,i1,i2, iv) = dWM * rho
     & - (2.0d0) * dWP * ((1.0d0) - rho)
                     elseif ( bigP ) then
                        dWPlus (i0,i1,i2, iv) = dWP * rho
     & - (2.0d0) * dWM * ((1.0d0) - rho)
                     endif
                  endif
               endif
            else
               if ( bigM ) then
                  dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
               endif
               if ( bigP ) then
                  dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
               endif
            endif
      enddo
      enddo
      enddo
         if (hasLo .eq. 1) then
      do i2 = iloBoxlo2,iloBoxhi2
      do i1 = iloBoxlo1,iloBoxhi1
      do i0 = iloBoxlo0,iloBoxhi0
               dWM = dWMinus(i0,i1,i2, iv)
               dWP = dWPlus (i0,i1,i2, iv)
               bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
               bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
               prodE1 = dWM * dWP
               if (prodE1 .ge. 0) then
                  d2WC = d2W(i0,i1,i2, iv)
                  d2WR = d2W(i0 +ii0,i1 +ii1,i2 +ii2, iv)
                  atfcf = dW2fcf(i0,i1,i2, iv)
                  rho = 0
                  if (abs(atfcf) .ge. eps) then
                     sd2WC = sign((1.0d0), d2WC)
                     sd2WR = sign((1.0d0), d2WR)
                     sd2fcf = sign((1.0d0), atfcf)
                     if ( (sd2WR .eq. sd2WC) .and.
     & (sd2fcf .eq. sd2WC) ) then
                        d2Wlim = sd2WC *
     & min(abs(atfcf),
     & limitC * abs(d2WC),
     & limitC * abs(d2WR))
                        rho = d2Wlim / atfcf
                     endif
                  endif
                  if (rho .lt. ((1.0d0) - eps)) then
                     d2WRR = d2W(i0 +2*ii0,i1 +2*ii1,i2 +2*ii2, iv)
                     d3WR = d2WR - d2WC
                     d3WRR = d2WRR - d2WR
                     d3Wmin = min(d3WR, d3WRR)
                     d3Wmax = max(d3WR, d3WRR)
                     prodD3 = C3 * max(abs(d3Wmax), abs(d3Wmin))
     & - abs(d3Wmax - d3Wmin)
                     if (prodD3 .le. 0) then
                        if (prodE1 .gt. 0) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
                           dWPlus (i0,i1,i2, iv) = dWP * rho
                        elseif ( bigM ) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
     & - (2.0d0) * dWP * ((1.0d0) - rho)
                        elseif ( bigP ) then
                           dWPlus (i0,i1,i2, iv) = dWP * rho
     & - (2.0d0) * dWM * ((1.0d0) - rho)
                        endif
                     endif
                  endif
               else
                  if ( bigM ) then
                     dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
                  endif
                  if ( bigP ) then
                     dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
                  endif
               endif
      enddo
      enddo
      enddo
      do i2 = inextLoBoxlo2,inextLoBoxhi2
      do i1 = inextLoBoxlo1,inextLoBoxhi1
      do i0 = inextLoBoxlo0,inextLoBoxhi0
               dWM = dWMinus(i0,i1,i2, iv)
               dWP = dWPlus (i0,i1,i2, iv)
               bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
               bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
               prodE1 = dWM * dWP
               if (prodE1 .ge. 0) then
                  d2WL = d2W(i0 -ii0,i1 -ii1,i2 -ii2, iv)
                  d2WC = d2W(i0,i1,i2, iv)
                  d2WR = d2W(i0 +ii0,i1 +ii1,i2 +ii2, iv)
                  atfcf = dW2fcf(i0,i1,i2, iv)
                  rho = 0
                  if (abs(atfcf) .ge. eps) then
                     sd2WL = sign((1.0d0), d2WL)
                     sd2WC = sign((1.0d0), d2WC)
                     sd2WR = sign((1.0d0), d2WR)
                     sd2fcf = sign((1.0d0), atfcf)
                     if ( (sd2WL .eq. sd2WC) .and.
     & (sd2WR .eq. sd2WC) .and.
     & (sd2fcf .eq. sd2WC) ) then
                        d2Wlim = sd2WC *
     & min(abs(atfcf),
     & limitC * abs(d2WC),
     & limitC * abs(d2WL),
     & limitC * abs(d2WR))
                        rho = d2Wlim / atfcf
                     endif
                  endif
                  if (rho .lt. ((1.0d0) - eps)) then
                     d2WRR = d2W(i0 +2*ii0,i1 +2*ii1,i2 +2*ii2, iv)
                     d3WL = d2WC - d2WL
                     d3WR = d2WR - d2WC
                     d3WRR = d2WRR - d2WR
                     d3Wmin = min(d3WL, d3WR, d3WRR)
                     d3Wmax = max(d3WL, d3WR, d3WRR)
                     prodD3 = C3 * max(abs(d3Wmax), abs(d3Wmin))
     & - abs(d3Wmax - d3Wmin)
                     if (prodD3 .le. 0) then
                        if (prodE1 .gt. 0) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
                           dWPlus (i0,i1,i2, iv) = dWP * rho
                        elseif ( bigM ) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
     & - (2.0d0) * dWP * ((1.0d0) - rho)
                        elseif ( bigP ) then
                           dWPlus (i0,i1,i2, iv) = dWP * rho
     & - (2.0d0) * dWM * ((1.0d0) - rho)
                        endif
                     endif
                  endif
               else
                  if ( bigM ) then
                     dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
                  endif
                  if ( bigP ) then
                     dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
                  endif
               endif
      enddo
      enddo
      enddo
         endif
         if (hasHi .eq. 1) then
      do i2 = ihiBoxlo2,ihiBoxhi2
      do i1 = ihiBoxlo1,ihiBoxhi1
      do i0 = ihiBoxlo0,ihiBoxhi0
               dWM = dWMinus(i0,i1,i2, iv)
               dWP = dWPlus (i0,i1,i2, iv)
               bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
               bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
               prodE1 = dWM * dWP
               if (prodE1 .ge. 0) then
                  d2WL = d2W(i0 -ii0,i1 -ii1,i2 -ii2, iv)
                  d2WC = d2W(i0,i1,i2, iv)
                  atfcf = dW2fcf(i0,i1,i2, iv)
                  rho = 0
                  if (abs(atfcf) .ge. eps) then
                     sd2WL = sign((1.0d0), d2WL)
                     sd2WC = sign((1.0d0), d2WC)
                     sd2fcf = sign((1.0d0), atfcf)
                     if ( (sd2WL .eq. sd2WC) .and.
     & (sd2fcf .eq. sd2WC) ) then
                        d2Wlim = sd2WC *
     & min(abs(atfcf),
     & limitC * abs(d2WC),
     & limitC * abs(d2WL))
                        rho = d2Wlim / atfcf
                     endif
                  endif
                  if (rho .lt. ((1.0d0) - eps)) then
                     d2WLL = d2W(i0 -2*ii0,i1 -2*ii1,i2 -2*ii2, iv)
                     d3WLL = d2WL - d2WLL
                     d3WL = d2WC - d2WL
                     d3Wmin = min(d3WLL, d3WL)
                     d3Wmax = max(d3WLL, d3WL)
                     prodD3 = C3 * max(abs(d3Wmax), abs(d3Wmin))
     & - abs(d3Wmax - d3Wmin)
                     if (prodD3 .le. 0) then
                        if (prodE1 .gt. 0) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
                           dWPlus (i0,i1,i2, iv) = dWP * rho
                        elseif ( bigM ) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
     & - (2.0d0) * dWP * ((1.0d0) - rho)
                        elseif ( bigP ) then
                           dWPlus (i0,i1,i2, iv) = dWP * rho
     & - (2.0d0) * dWM * ((1.0d0) - rho)
                        endif
                     endif
                  endif
               else
                  if ( bigM ) then
                     dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
                  endif
                  if ( bigP ) then
                     dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
                  endif
               endif
      enddo
      enddo
      enddo
      do i2 = inextHiBoxlo2,inextHiBoxhi2
      do i1 = inextHiBoxlo1,inextHiBoxhi1
      do i0 = inextHiBoxlo0,inextHiBoxhi0
               dWM = dWMinus(i0,i1,i2, iv)
               dWP = dWPlus (i0,i1,i2, iv)
               bigM = ( abs(dWM) .gt. (2.0d0) * abs(dWP) )
               bigP = ( abs(dWP) .gt. (2.0d0) * abs(dWM) )
               prodE1 = dWM * dWP
               if (prodE1 .ge. 0) then
                  d2WL = d2W(i0 -ii0,i1 -ii1,i2 -ii2, iv)
                  d2WC = d2W(i0,i1,i2, iv)
                  d2WR = d2W(i0 +ii0,i1 +ii1,i2 +ii2, iv)
                  atfcf = dW2fcf(i0,i1,i2, iv)
                  rho = 0
                  if (abs(atfcf) .ge. eps) then
                     sd2WL = sign((1.0d0), d2WL)
                     sd2WC = sign((1.0d0), d2WC)
                     sd2WR = sign((1.0d0), d2WR)
                     sd2fcf = sign((1.0d0), atfcf)
                     if ( (sd2WL .eq. sd2WC) .and.
     & (sd2WR .eq. sd2WC) .and.
     & (sd2fcf .eq. sd2WC) ) then
                        d2Wlim = sd2WC *
     & min(abs(atfcf),
     & limitC * abs(d2WC),
     & limitC * abs(d2WL),
     & limitC * abs(d2WR))
                        rho = d2Wlim / atfcf
                     endif
                  endif
                  if (rho .lt. ((1.0d0) - eps)) then
                     d2WLL = d2W(i0 -2*ii0,i1 -2*ii1,i2 -2*ii2, iv)
                     d3WLL = d2WL - d2WLL
                     d3WL = d2WC - d2WL
                     d3WR = d2WR - d2WC
                     d3Wmin = min(d3WLL, d3WL, d3WR)
                     d3Wmax = max(d3WLL, d3WL, d3WR)
                     prodD3 = C3 * max(abs(d3Wmax), abs(d3Wmin))
     & - abs(d3Wmax - d3Wmin)
                     if (prodD3 .le. 0) then
                        if (prodE1 .gt. 0) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
                           dWPlus (i0,i1,i2, iv) = dWP * rho
                        elseif ( bigM ) then
                           dWMinus(i0,i1,i2, iv) = dWM * rho
     & - (2.0d0) * dWP * ((1.0d0) - rho)
                        elseif ( bigP ) then
                           dWPlus (i0,i1,i2, iv) = dWP * rho
     & - (2.0d0) * dWM * ((1.0d0) - rho)
                        endif
                     endif
                  endif
               else
                  if ( bigM ) then
                     dWMinus(i0,i1,i2, iv) = -(2.0d0) * dWP
                  endif
                  if ( bigP ) then
                     dWPlus (i0,i1,i2, iv) = -(2.0d0) * dWM
                  endif
               endif
      enddo
      enddo
      enddo
         endif
      enddo
      return
      end
