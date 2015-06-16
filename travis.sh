#!/bin/sh
# -e: fail on error
# -v: show commands
# -x: show expanded commands
set -vex

#env | sort
#sudo pip install virtualenv
make pre
make virtualenv
make check
make -j
