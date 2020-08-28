#!/usr/bin/env bash

# Initialize conda
eval "$(/data/miniconda3/bin/conda  'shell.bash' 'hook')"

# Shortcut to load environments
function cl() {
  conda activate ${1}
}
