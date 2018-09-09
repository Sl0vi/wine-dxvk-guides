#!/bin/bash

# Put this file into your wine prefix directory.
# You can then quickly set your wine environment by sourcing this file

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

export WINEPREFIX=$DIR
export WINEARCH=win32
