#!/usr/bin/env bash

function clear_nbs() {
    if [[ -x 'jupyter' ]]; then
      command=jupyter
    else
      command=${CONDA_PREFIX}/bin/jupyter
    fi

    $command nbconvert \
      --ClearMetadataPreprocessor.enabled=True \
      --clear-output --log-level=ERROR \
      ${1:-*.ipynb}
}

