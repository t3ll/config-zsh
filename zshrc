# editor is vim

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# emacs mode

bindkey -e

# history

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# zplug; see: https://github.com/zplug/zplug

source ~/.zplug/init.zsh

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "supercrabtree/k"
zplug "b4b4r07/enhancd", use:init.sh

if ! zplug check; then
    zplug install
fi

zplug load # ---verbose

# aliases

alias g='git'
alias gs='git status'
alias k='k -h'
alias ka='k -ahn'
alias la='ls -Alh | grep " \." | sort'
alias ll='ls -lh'
alias ls='ls --color=auto -F'
alias xi='sudo xbps-install -AS'
alias xq='xbps-query -Rs'

# paths

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# go paths

if ! [[ "$PATH" =~ "$HOME/go/bin:" ]]
then
    PATH="$HOME/go/bin:$PATH"
fi

export path
