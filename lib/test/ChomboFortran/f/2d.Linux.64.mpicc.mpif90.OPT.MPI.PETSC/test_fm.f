# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/test_fm.C"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/test_fm.C"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/REAL.H" 1
# 2 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/test_fm.C" 2
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
# 3 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/test_fm.C" 2
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 1
# 13 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceHeader.H" 1
# 14 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 2
# 135 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H"
# 1 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/BaseNamespaceFooter.H" 1
# 136 "/home/rochi/Desktop/Chombo_3.2/lib/test/ChomboFortran/../../src/BaseTools/CONSTANTS.H" 2
# 4 "p/2d.Linux.64.mpicc.mpif90.OPT.MPI.PETSC/test_fm.C" 2
      subroutine TEST_FM1(
     & a_i
     & )
      implicit none
      integer*8 ch_flops
      COMMON/ch_timer/ ch_flops
      integer a_i
      if( a_i .EQ. 1 ) goto 1
      if( a_i .EQ. 2 ) goto 2
      if( a_i .EQ. 3 ) goto 10
      if( a_i .EQ. 4 ) goto 11
      if( a_i .EQ. 5 ) goto 12345
      a_i = -1
      return
    1 continue
      a_i = 101
      return
    2 continue
      a_i = 102
      return
   10 continue
      a_i = 103
      return
   11 a_i = 104
      return
12345 a_i = 105
      return
      end
