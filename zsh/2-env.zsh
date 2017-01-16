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

# For a Go toolchain installed in a standard location
export PATH=$PATH:/usr/local/go/bin

# Local paths
export PATH=$HOME/bin:$HOME/local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$HOME/local

# Go path
export GOPATH=$HOME

# CD path
export CDPATH=$HOME/src

