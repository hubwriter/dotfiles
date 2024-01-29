#!/bin/bash

# If we are in a codespace:
if ("$CODESPACES" == "true") then
   # Copy the vscode settings into the codespace:
   cp vscode/settings.json ~/.vscode-remote/data/Machine/settings.json

   # Copy files into the codespace:
   cp -R .scripts ~/.scripts            # .scripts directory contains the branchlister scripts
   cp run.sh ~/run.sh                   # add the script for installing extensions

   zshrc() {
      echo "==========================================================="
      echo "             cloning zsh-autosuggestions                   "
      echo "-----------------------------------------------------------"
      git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
      echo "==========================================================="
      echo "             cloning zsh-syntax-highlighting               "
      echo "-----------------------------------------------------------"
      git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
      echo "==========================================================="
      echo "             cloning powerlevel10k                         "
      echo "-----------------------------------------------------------"
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
      echo "==========================================================="
      echo "             import zshrc                                  "
      echo "-----------------------------------------------------------"
      cat .zshrc > $HOME/.zshrc
      echo "==========================================================="
      echo "             import powerlevel10k                          "
      echo "-----------------------------------------------------------"
      cat .p10k.zsh > $HOME/.p10k.zsh
      echo "==========================================================="
      echo "             install ruby and colorls                      "
      echo "-----------------------------------------------------------"
      sudo apt update
      sudo apt --assume-yes install ruby-rubygems ruby-dev
      sudo gem install colorls
      echo "==========================================================="
   }

   zshrc
fi
