#!/bin/bash

# Launcher script for Alpha Centauri
#
# This script assumes that you installed the game into c:\alpha-centauri.
# Change the GAMEPATH variable if you installed it to a different folder.

GAMEPATH="drive_c/alpha_centauri"
EXE="terranx.exe"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

. "${DIR}/wine-env.sh"

cd "${DIR}/${GAMEPATH}"
wine "${EXE}"

