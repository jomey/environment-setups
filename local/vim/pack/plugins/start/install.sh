#!/usr/bin/env bash

while read line; do
  git clone --depth 1 $line
done < plugins.txt

