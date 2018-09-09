#!/bin/bash

# Wine 64-bit environment
#
# Put this file into your wine prefix directory.
# You can then quickly set your wine environment by sourcing this file

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

export WINEPREFIX="${DIR}"
export WINEARCH="win64"

