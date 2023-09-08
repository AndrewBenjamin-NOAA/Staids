#!/bin/bash

set -x

  module reset
  
  module load PrgEnv-intel/8.3.3
  module load craype/2.7.17
  module load intel/19.1.3.304
  module load cray-mpich/8.1.7
  module load sp/2.3.3

  export FCOMP=ftn
  export FFLAGS="-O0 -g -traceback -r8 -i4 -convert big_endian -check bounds"

  make clean
  make
