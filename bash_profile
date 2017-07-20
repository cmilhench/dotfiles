stty -ixon
export HISTCONTROL=ignoreboth:erasedups

 #Git Completion
 
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# AWS Completion
complete -C aws_completer aws

# Shell
alias ls="ls -G"
alias ll="ls -aoG"
alias clean="sudo find . -name '.DS_*' -o -name '.*.swp' | xargs rm"
alias h="history"
alias ip="ipconfig getifaddr en0 ; curl ipecho.net/plain ; echo"
alias ports='netstat -tulanp tcp'
alias tree='tree -C -I node_modules'
alias goenv='export GOPATH=$PWD && export PATH=$GOPATH/bin:$PATH'

# Bash Editor
export EDITOR=vim

# Prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='   § \W\[\033[01;33m\]$(__git_ps1)\[\033[00m\] : '

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use 4 1&>/dev/null

# Set the default gopath
export export GOPATH=$HOME/Code/cm/golang && PATH=$GOPATH/bin:$PATH
