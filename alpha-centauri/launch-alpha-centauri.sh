#!/bin/bash

# Launcher script for Alien Crossfire
#
# This script assumes that you installed the game into c:\alpha-centauri.
# Change the GAMEPATH variable if you installed it to a different folder.

GAMEPATH="drive_c/alpha_centauri"
EXE="terran.exe"

. wine-env.sh

cd "${GAMEPATH}"
wine "${EXE}"

