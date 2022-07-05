## Common includes
source ${PROJECTS_ROOT}/environment-setups/common/colors.bash
source ${PROJECTS_ROOT}/environment-setups/common/functions.bash
source ${PROJECTS_ROOT}/environment-setups/common/conda.sh
source ${PROJECTS_ROOT}/environment-setups/common/micromamba.sh
source ${PROJECTS_ROOT}/environment-setups/common/clear_nbs.bash

export GDAL_OPTS=${PROJECTS_ROOT}/environment-setups/common/gdal_opts.txt

source ${PROJECTS_ROOT}/cdo-2.0.5/contrib/cdoCompletion.bash

