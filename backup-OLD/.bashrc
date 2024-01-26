LS_COLORS='di=1;0;42:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35;40:*.rpm=90'
export LS_COLORS

# Next 2 lines from https://michael-kuehnel.de/node.js/2015/09/08/using-vm-to-switch-node-versions.html
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

alias   ls='ls -bFGH'
alias   getrepo='sensible-browser $(git config --get remote.origin.url)'

alias   branchdate='git for-each-ref --sort=-committerdate refs/heads/ --format="%(refname)   ----  %(committerdate) - %(authorname)" | sed "s/refs\/heads\///g"'
alias   bd='bash ~/.scripts/branchlister.sh'
alias   bl='bash ~/.scripts/branchlister.sh'
alias   bb='bash ~/.scripts/branchpicker.sh'
alias   bb1='bash ~/.scripts/branchpicker.sh 1'
alias   bb2='bash ~/.scripts/branchpicker.sh 2'
alias   bb3='bash ~/.scripts/branchpicker.sh 3'
alias   bb4='bash ~/.scripts/branchpicker.sh 4'
alias   bb5='bash ~/.scripts/branchpicker.sh 5'
alias   bb6='bash ~/.scripts/branchpicker.sh 6'
alias   bb7='bash ~/.scripts/branchpicker.sh 7'
alias   bb8='bash ~/.scripts/branchpicker.sh 8'

source ~/.git-prompt.sh
PS1='\[\033[1;36m\]\w\[\033[0m\] \[\033[1;32m\]$(__git_ps1)\[\033[0m\]'$'\n\$ '
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM='verbose git'
export GIT_PS1_SHOWDIRTYSTATE GIT_PS1_SHOWUPSTREAM
export PATH=${PATH}:~/.node/bin:~/.nodenv/versions/14.13.0/
export HOMEBREW_AUTO_UPDATE_SECS=3600
export EDITOR=vi
eval $(ssh-agent); ssh-add
# eval "$(nodenv init -)"
# eval "$(rbenv init -)"

echo -e "

####################################################
#
#  Welcome to hostname: ${HOSTNAME}
#  You are logged in as: ${USER}
#  \$HOME = ${HOME}
#  Bash config file: ${BASH_SOURCE[0]}
#
####################################################

Current directory: `pwd`
Enter \"alias\" to list the available aliased commands.

"

# If VS Code is installed, install my personal choice of VS Code extensions
if command -v code &> /dev/null
then
  source ~/run.sh    
fi
