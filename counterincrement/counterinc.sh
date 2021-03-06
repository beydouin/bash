#!/usr/bin/env bash
# counterinc.sh
# version 1.0.0
# Bedouin Technologies (c) Copyright 2020 *GPL*
# 20200501
# set -x

tries=10
counter=0

# lets assume a non-existant file in the current directory
file="someFile.log"

if [ -f $file ]; then
  echo "The file exists!"
  echo "ending this demo loop"
else
  while [ ! -f "$file" ] && [ "$counter" != "$tries" ]; do
    ((counter++))
    echo "TRY # $counter"
    echo "File does not exist yet."
    sleep 2
  done
fi
