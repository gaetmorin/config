#
# ZSH Main config file
# --------------------
#
# Author:  Gaëtan Morin
# Purpose: File to link as $HOME/.zshrc
#
# This script just sources all other .zsh files in the configuration directory.
#


export ZSH_CONF_DIR=$HOME/Config/zsh

for script in $ZSH_CONF_DIR/*.zsh; do
	source $script
done

