#!/usr/bin/env bash
# example01.sh
# ERE sed example01
# version 1.0.0
# Bedouin Technologies (c) Copyright 2020 *GPL*
# 20200609
#set -x

basedir="$(pwd)"
file1="$basedir/file1.log"

sed -E 's/^(.{11})49/\158/' $file1

echo OR to remove the characters 4 and 9 all together

sed -E 's/^(.{11})49/\1/' $file1
