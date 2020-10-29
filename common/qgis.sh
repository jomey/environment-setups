#!/usr/bin/env bash

eval "$(/data/miniconda3/bin/conda  'shell.bash' 'hook')"
conda activate qgis
/data/miniconda3/envs/qgis/bin/qgis ${1}
