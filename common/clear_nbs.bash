#!/usr/bin/env bash

function clear_nbs() {
  if ! $(type jupyter &> /dev/null); then
    echo "Required jupyter command not found"
  else
    jupyter  nbconvert --clear-output --inplace --log-level=ERROR $1
  fi
}

