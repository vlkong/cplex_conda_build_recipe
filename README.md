# cplex_conda_build
Instructions and example recipe to build CPLEX for conda

Important note: the `meta.yaml` contains information like the package name.
If you are build a conda package for private use, you can leave
the name `cplex`. If you want to mix private and public package, I recommend you change the name of your CPLEX (on public conda, `cplex` is the name for the Community Edition package).

# Prerequisites
Once `conda` is installed and your  environment activated, you
need to install `conda-build` with command:
```
$ conda install conda-build
```

You also need CPLEX Optimization studio installed.

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
