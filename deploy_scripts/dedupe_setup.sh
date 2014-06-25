#!/bin/bash

DIR=`pwd`
PYTHON_BIN=$DIR/build/venv/bin

mkdir $DIR/build

wget -O $DIR/build/virtualenv.tar.gz \
  https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.11.5.tar.gz

cd $DIR/build
tar -xvf virtualenv.tar.gz
mkdir -p venv
virtualenv-1.11.5/virtualenv.py venv

source $PYTHON_BIN/activate

cd $DIR

$PYTHON_BIN/pip install "numpy>=1.6"
$PYTHON_BIN/pip install -r ../requirements.txt
$PYTHON_BIN/pip install supervisor --pre
