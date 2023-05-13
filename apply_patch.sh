#!/bin/bash  

# open terminal on double-click, skip else. See https://www.linuxquestions.org/questions/programming-9/executing-shell-script-in-terminal-directly-with-a-double-click-370091/
tty -s; if [ $? -ne 0 ]; then /etc/alternatives/x-terminal-emulator -e "$0"; exit; fi

# change to current working directory
cd `dirname $0`

# just for output
echo off
clear

# set active patchfile 
#PATCHFILE=./STM8L10x_StdPeriph_Lib_V1.2.1_sdcc.patch
#PATCHFILE=./STM8L15x-16x-05x-AL31-L_StdPeriph_Lib_V1.6.2_sdcc.patch
PATCHFILE=./STM8S_StdPeriph_Lib_V2.3.1_sdcc.patch
#PATCHFILE=./STM8TL5x_StdPeriph_Lib_V1.0.1.patch

# recursively set write permissions. Some seem to be broken
chmod -R u+w STM8*

# use patch command to apply patchfile. See https://stackoverflow.com/questions/9980186/how-to-create-a-patch-for-a-whole-directory-to-update-it
#   -p0 == needed to find the proper folder
patch -p0 < $PATCHFILE

echo " "
read -p "press key to close window..."
echo on
