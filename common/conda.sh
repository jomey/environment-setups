#!/usr/bin/env bash

# Initialize conda
eval "$(/data/miniconda3/bin/conda  'shell.bash' 'hook')"

# Shortcut to load environments
function cl() {
  conda activate ${1}
}

# For prompt modifications
function parse_conda_env () {
    if [ ! -z "$CONDA_DEFAULT_ENV" ]
    then
        echo "<$(basename "$CONDA_DEFAULT_ENV")>"
    fi
}

