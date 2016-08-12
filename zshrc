export ZSH=$HOME/.oh-my-zsh

if [[ $(uname) =~ "FreeBSD" ]]; then
  export LANG=en_US.UTF-8
  export MM_CHARSET=UTF-8
fi

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ "screen" ]] && \
      [ -z $TMUX ] && \
      [ ! -z $SSH_CONNECTION ] && \
      exec tmux
fi

fortune -a

ZSH_THEME="gentoo"

plugins=(gitfast zsh-syntax-highlighting)

typeset -U path
path=(
  ~/.local/bin
  ~/bin
  $path
)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

alias cp="cp -v"
alias ls="ls -F"
alias mv="mv -v"
alias rm="rm -v"

setopt HIST_IGNORE_SPACE
alias jrnl=" jrnl"

