#!/usr/bin/env bash

# Shortcut to load environments
function cl() {
  micromamba activate ${1}
}

# For prompt modifications
function parse_conda_env () {
    if [ ! -z "$CONDA_DEFAULT_ENV" ]
    then
        echo "<$(basename "$CONDA_DEFAULT_ENV")>"
    fi
}

