#
# ZSH environment
# ---------------
#
# Author:  Gaëtan Morin
# Purpose: Setting of exported environment variable (PATH, etc)
#

# 256 color terminal, where available
export TERM=xterm-256color

# Add bin directories of local installs to PATH
for dir in $HOME/local/opt/*/bin; do
    if test -d $dir; then
        PATH=$dir:$PATH
    fi
done

# Local paths
export PATH=$HOME/bin:$HOME/local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$HOME/local/lib/python:$PYTHONPATH

# Go path
export GOPATH=$HOME
export GOROOT=$HOME/local/opt/go

# CD path
export CDPATH=$HOME/src

