#
# ZSH environment
# ---------------
#
# Author:  Gaëtan Morin
# Purpose: Setting of exported environment variable (PATH, etc)
#

# 256 color terminal, where available
export TERM=xterm-256color

# Local paths
PATH=$HOME/.local/bin:$PATH
LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH
PYTHONPATH=$HOME/.local/lib/python:$PYTHONPATH

# Go path
GOPATH=$HOME/Code/go:$GOPATH
export GOROOT=$HOME/.local/opt/go
export GOMISC=$GOROOT/misc
PATH=$HOME/Code/go/bin:$GOROOT/bin:$PATH


###
export PATH
export LD_LIBRARY_PATH
export PYTHONPATH
export GOPATH

