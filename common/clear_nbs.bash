#!/usr/bin/env bash

function clear_nbs() {
  micromamba run -n jupyter-lab jupyter  nbconvert --clear-output --inplace --log-level=ERROR $1
}

