#!/bin/bash

PYTHON=`python --version`
PIP=`pip --version`

if [ "$PYTHON" != "Python 3.8.3" ]; then
  echo "**** Python not found - $PYTHON ****"
  exit 1
fi

if [ "$PIP" != "6.14.4" ]; then
  echo "**** PIP not found - $PIP ****"
  exit 1
fi
