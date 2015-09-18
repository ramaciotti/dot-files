export ZSH=/home/andre/.oh-my-zsh

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ "screen" ]] && [ -z $TMUX ] && exec tmux
fi

fortune -a

ZSH_THEME="gallifrey"

plugins=(gitfast zsh-syntax-highlighting)

typeset -U path
path=(
  ~/.gem/ruby/2.2.0/bin
  $path
)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"

