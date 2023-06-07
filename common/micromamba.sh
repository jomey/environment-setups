#!/usr/bin/env bash

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/data/micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/data/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__mamba_setup"
else
  if [ -f "/data/micromamba/etc/profile.d/micromamba.sh" ]; then
    . "/data/micromamba/etc/profile.d/micromamba.sh"
  else
    # extra space after export prevents interference from conda init
    export  PATH="$PATH:/data/micromamba/bin"
  fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

