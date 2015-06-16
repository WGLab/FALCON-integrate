#!/bin/sh
# -e: fail on error
# -v: show commands
# -x: show expanded commands
set -vex

#env | sort
#sudo pip install virtualenv
make pre # Travis pulls submodules for us, but not --recursive
make virtualenv
make check
make -j
