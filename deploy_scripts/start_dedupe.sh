#!/bin/bash

cd ../

MAIN_DIR=`pwd`
cd deploy_scripts
DIR=`pwd`
PYTHON_BIN=$DIR/build/venv/bin

export MAIN_DIR=$MAIN_DIR
export PYTHON_BIN=$PYTHON_BIN

$PYTHON_BIN/supervisord -c $DIR/supervisord.conf

echo "Dedupe Started. Visit http://127.0.0.1:9999 in a browser to start."
