#!/bin/bash

# Put this file into your wine prefix directory.
# You can then quickly set your wine environment by sourcing this file

DIR="${BASH_SOURCE%/*}"

export WINEPREFIX=$DIR
export WINEARCH=win32
