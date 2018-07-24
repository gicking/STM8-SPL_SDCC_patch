#!/bin/bash  

# change to current working directory
cd `dirname $0`

# set folders to patch 
#PATCHFILE=./STM8L10x_StdPeriph_Lib_V1.2.1_sdcc.patch
#PATCHFILE=./STM8L15x-16x-05x-AL31-L_StdPeriph_Lib_V1.6.2_sdcc.patch
PATCHFILE=./STM8S_StdPeriph_Lib_V2.3.1_sdcc.patch
#PATCHFILE=./STM8TL5x_StdPeriph_Lib_V1.0.1.patch

# use patch command to apply patchfile 
# https://stackoverflow.com/questions/9980186/how-to-create-a-patch-for-a-whole-directory-to-update-it
#   -p0 == needed to find the proper folder
patch -p0 < $PATCHFILE

