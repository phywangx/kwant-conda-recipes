#!/bin/bash
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
   cp $RECIPE_DIR/build_mac.conf build.conf
   sed -i -e "s:PREFIX:$PREFIX:g" build.conf
else
   cp $RECIPE_DIR/build_linux.conf build.conf
fi

$PYTHON setup.py build
$PYTHON setup.py install
