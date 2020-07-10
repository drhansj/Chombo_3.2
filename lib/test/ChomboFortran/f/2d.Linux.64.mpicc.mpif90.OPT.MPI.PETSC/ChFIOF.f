# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ChFIOF.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ChFIOF.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ChFIOF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 1
# 22 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H" 1
# 18 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 19 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H" 2
# 59 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 60 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CH_assert.H" 2
# 23 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/NamespaceHeader.H" 1
# 25 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 2
# 66 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/NamespaceFooter.H" 1
# 67 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BoxTools/SPACE.H" 2
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ChFIOF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ChFIOF.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 1
# 6 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/ChFIOF.C" 2
      subroutine CHF_FIO(
     & Int1
     & ,Real1
     & ,proc
     & ,status
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer Int1
      REAL*8 Real1
      integer proc
      integer status
      integer unit
      integer int2
      REAL*8 real2
      integer curdigit
      integer curnum
      CHARACTER*11 digit
      CHARACTER*100 procstr
      integer num
      integer index
      CHARACTER*100 filename
      digit = '0123456789'
      num = 0
      curnum = proc
  100 curdigit = mod(curnum,10) + 1
      num = num + 1
      curnum = curnum / 10
      if (curnum.gt.0 .and. num.lt.100) goto 100
      index = num
      curnum = proc
  200 curdigit = mod(curnum,10) + 1
      procstr(index:index) = digit(curdigit:curdigit)
      index = index - 1
      curnum = curnum / 10
      if (curnum.gt.0) goto 200
      filename = 'CHFIOtest'
      unit = 19 + proc
      open( unit ,file=filename ,FORM='FORMATTED'
     & ,iostat=status )
      if( status .NE. 0 )then
        write(*,*) 'error: CHF_FIO: open failed, status = ',status
        return
      endif
      write( unit,*,iostat=status ) Int1 ,' is the integer.'
      write( unit,*,iostat=status ) Real1 ,' is the real.'
      close( unit ,status='KEEP' ,iostat=status )
      open( unit ,file=filename ,status='OLD' ,FORM='FORMATTED'
     & ,iostat=status )
      if( status .NE. 0 )then
        write(*,*) 'error: CHF_FIO: open/old failed, status = ',status
        return
      endif
      read( unit,*,iostat=status) int2
      read( unit,*,iostat=status) real2
      if( int2 .NE. Int1 ) then
         status = 3
         return
      endif
      if( real2 .NE. Real1 ) then
         status = 4
         return
      endif
      close( unit ,status='DELETE' ,iostat=status )
      status = 0
      return
      status = 5
      return
      end
      subroutine CHF_STDIO(
     & Int1
     & ,Real1
     & ,status
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer Int1
      REAL*8 Real1
      integer status
      character indent*4
      indent = '    '
      print*,indent,'CHF_STDIO: test 1, integer, real values = ' ,Int1 ,
     &Real1
      status = 0
      return
      end
      subroutine CHF_MAYDAY(
     & status
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer status
      call MAYDAY_ERROR()
      call MAYDAY_ABORT()
      status = -123456
      return
      end
