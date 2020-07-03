#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/EquilibriaCC/Equilibria"
version="android"

if [ ! -d "Equilibria" ]; then
  git clone ${url} -b ${version}
  cd Equilibria
  git submodule update --recursive --init
else
  cd Equilibria
  git checkout ${version}
  git pull
  git submodule update --recursive --init
fi
