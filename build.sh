#!/bin/sh

# edit and replace with the actual platform
PLATFORM="x86-64_linux"

# edit and replace with the python version
# CPLEX wrappers are defined on a python version basis
PYVERSION="3.8"

# edit and replace with the actual cplex studio directory
CPLEX_STUDIO_DIR=/home/kong/ILOG/CPLEX_Studio_Community201
(cd $CPLEX_STUDIO_DIR/cplex/python/$PYVERSION/$PLATFORM/ ; python setup.py install)
