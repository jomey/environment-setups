#!/usr/bin/env bash

# >>> mamba initialize >>>
export MAMBA_EXE="/data/micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/data/micromamba";
__mamba_setup="$('/data/micromamba/bin/micromamba' shell hook --shell bash --prefix '/data/micromamba' 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__mamba_setup"
else
  if [ -f "/data/micromamba/etc/profile.d/micromamba.sh" ]; then
    . "/data/micromamba/etc/profile.d/micromamba.sh"
  else
    export  PATH="$PATH:/data/micromamba/bin"  # extra space after export prevents interference from conda init
  fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

