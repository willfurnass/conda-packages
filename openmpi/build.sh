#!/bin/bash

# Exit if any command fails
set -e

export LIBRARY_PATH="$PREFIX/lib"

# Open MPI now ignores the F77 and FFLAGS environment variables; only the FC and FCFLAGS environment variables are used. 
unset F77 
unset FFLAGS 

# Build OpenMPI with support for 
# - Intel Omni-Path Architecture high-speed interconnects (via the PSM2 driver)
# - C and Fortran but not C++
#./configure --prefix=$PREFIX \
#            --disable-dependency-tracking \
#            --enable-mpi-fortran \
#            --with-psm2
## Build in parallel if NSLOTS is defined
#make -j ${NSLOTS-1}
#make check
#make install
if type ldconfig 2>&1 > /dev/null; then
    ldconfig -p
else
    echo "SYSTEM LDCONFIG"
    /sbin/ldconfig -p
fi
