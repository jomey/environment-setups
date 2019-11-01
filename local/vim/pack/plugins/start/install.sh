#!/usr/bin/env bash

while read line; do
  git clone $line
done < plugins.txt

