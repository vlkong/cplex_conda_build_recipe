# cplex_conda_build
Instructions and example recipe to build CPLEX for conda.

The first thing is to read the tutorial on `conda.io`: https://conda.io/projects/conda-build/en/latest/user-guide/tutorials/build-pkgs.html 

This is a 5 mn read and can save you a lot of time.

Once ready, all you need to do is clone this repository and follow the instructions below.

Important note: the `meta.yaml` contains information like the package name.
If you are build a conda package for private use, you can leave
the name `cplex`. If you want to mix private and public package, I recommend you change the name of your CPLEX (on public conda, `cplex` is the name for the Community Edition package).

# Prerequisites
Once `conda` is installed, you need to create a conda environment with the target python version.

Activate the environment, then install the `conda-build` package:
```
$ conda install conda-build
```

# Edit build file

Edit `meta.yaml` file for the metadata of the package.

Edit `build.sh` file and change platform/python version/cplex studio directory.

# build

You build the conda package using (assuming the current directory is the directory this github project was checked out)
```
conda build . --output-folder build
```

The resulting package is the `build/linux-64` directory, and should be named `cplex-20.1-0.tar.bz2`. To install it, run command:
```
conda install build/linux-64/cplex-20.1-0.tar.bz2 
```
