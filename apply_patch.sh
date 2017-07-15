#!/bin/bash  
# xxx
# change to current working directory
cd `dirname $0`

# set folders to patch 
PATCHFILE=./STM8_SPL_SDCC.patch

# use patch command to apply patchfile 
# https://stackoverflow.com/questions/9980186/how-to-create-a-patch-for-a-whole-directory-to-update-it
#   -p0 == needed to find the proper folder
patch -p0 < $PATCHFILE

