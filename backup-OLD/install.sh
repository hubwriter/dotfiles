#!/bin/bash

# If we are in a codespace:

if ("$CODESPACES" == "true") then
   # Copy the vscode settings into the codespace:
   cp vscode/settings.json ~/.vscode-remote/data/Machine/settings.json

   # Copy files into the codespace:    
   cp -R .scripts ~/.scripts            # .scripts directory contains the branchlister scripts
   cp run.sh ~/run.sh                   # add the script for installing extensions
   cp .git-prompt.sh ~/.git-prompt.sh   # this add the Git prompt
   cp .bashrc ~/.bashrc                 # copy the .bashrc file
   cp .bash_profile ~/.bash_profile     # copy the .bash_profile file 
   source ~/.bashrc                     # run the .bashrc
    
   # Change the default shell to zsh for CLI connections over SSH:
   # sudo apt-get update -y
   # sudo apt-get install -y zsh
   # sudo chsh "$(id -un)" --shell "/usr/bin/zsh"
    
fi
