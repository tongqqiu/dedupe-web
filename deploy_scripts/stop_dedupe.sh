#!/bin/bash

DIR=`pwd`
PYTHON_BIN=$DIR/build/venv/bin

export DIR=$DIR
export PYTHON_BIN=$PYTHON_BIN

cd $DIR
$PYTHON_BIN/supervisorctl shutdown 
