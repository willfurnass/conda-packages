#!/bin/bash

mkdir -p $PREFIX/etc/conda/activate.d
cat <<EOF > $PREFIX/etc/conda/activate.d/openmpi.sh
echo setting MPI_HOME to $PREFIX
export MPI_HOME_OLD=$MPI_HOME
export MPI_HOME=$PREFIX
EOF

mkdir -p $PREFIX/etc/conda/deactivate.d
cat <<EOF > $PREFIX/etc/conda/deactivate.d/openmpi.sh
echo unsetting MPI_HOME
export MPI_HOME=$MPI_HOME_OLD
unset MPI_HOME_OLD
EOF

