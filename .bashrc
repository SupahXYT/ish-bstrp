# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in history.
export HISTCONTROL=ignoreboth:ignoredups

# Different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi

# set -o vi

# Enviornmental variable
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/supahx/go/bin"
export BROWSER="librewolf"
export EDITOR="vim"
export PS1="\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\]"
# export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

alias df='df -h'
alias du='du -h'

alias ls="ls --color"
alias l="ls"
alias ll="ls -lh"
alias la="ls -A"

alias claer="clear"
alias clea="clear"
alias clae="clear"
alias cleat="clear"
alias ckear="clear"

alias tms="transmission-remote"
alias p="sudo pacman"

alias yt="ytfzf"
alias ytd="youtube-dl"

alias ani="lf /var/lib/transmission/downloads"
