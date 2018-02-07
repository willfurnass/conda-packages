#!/bin/bash

# Exit if any command fails
set -e

# Build OpenMPI with support for Intel Omni-Path Architecture high-speed interconnects (via the PSM2 driver)
./configure --prefix=$PREFIX --with-psm2
# Build in parallel if NSLOTS is defined
make -j ${NSLOTS-1}
make check
make install
