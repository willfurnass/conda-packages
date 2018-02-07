Conda recipies for University of Sheffield HPC clusters
=======================================================

This repository is for recipies for the [University of Sheffield's HPC clusters](http://docs.hpc.shef.ac.uk), ShARC and Iceberg.

## Writing Packages

Each package should go in its own directory and should be written following the
documentation here: https://conda.io/docs/user-guide/tasks/build-packages/index.html

## Building Packages

Once you have written a recipe you can build it using:

    conda build mypackage_dir

On ShARC/Iceberg you will need the `apps/python/conda` environment module loaded and 
you should not activate a conda environment other than the root (default) environment.

If you want to build for different Python versions other than the default
Python 3.4 you need to specify them:

    conda build --python 2.7 --python 3.5 mypackage_dir

Note: You need to make sure you run the `conda build` command with sufficient privileges 
to be able to write to the root conda environment, the location of which can by found by running

    conda info

## Installing Packages

Once there is a package in the build directory:

* `/usr/local/packages6/conda/conda-bld/linux-64` on Iceberg
* `/usr/local/packages/apps/conda/conda-bld/linux-64` on ShARC

(and the package list is up to date) you can install it 
by following the isntructions here:

http://docs.hpc.shef.ac.uk/en/latest/iceberg/software/apps/python.html#using-python-with-mpi
