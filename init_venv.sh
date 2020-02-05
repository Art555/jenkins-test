#!/bin/bash
# script parameter $1 - tool to create virtualenv
# bash ./pt.sh virtualenv

VENV_ROOT=".venv"

if [ -z $1 ]; then
    tool=virtualenv
else
    tool=$1
fi

if [ ! -d ${VENV_ROOT} ]; then
    ${tool} -p python2.7 ${VENV_ROOT}
    cd ${VENV_ROOT}/bin
    source activate
    cd ../..
else
    source ${VENV_ROOT}/bin/activate
fi

python2.7 -m pip install --upgrade {pymongo,requests}
