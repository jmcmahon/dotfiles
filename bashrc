# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions


export M2_HOME='/usr/local/maven'
export PATH=${M2_HOME}/bin:${PATH}

xmodmap -e "remove lock = Caps_Lock"
set -o vi

# see http://blog.sanctum.geek.nz/default-grep-options/?utm_source=rss&utm_medium=rss&utm_campaign=default-grep-options
GREP_OPTIONS=--color
if grep --help | grep -- --exclude-dir &>/dev/null; then
    for PATTERN in .cvs .git .hg .svn; do
        GREP_OPTIONS="$GREP_OPTIONS --exclude-dir=$PATTERN"
    done
fi
export GREP_OPTIONS


alias lshead='ls -lt| head'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gd='git diff | vim -'
alias gl='git pull'
alias gp='git push'
alias gs='git status'
alias tree='tree -C -F -A --noreport'
alias tgrep="task | grep -i -C 4"
alias t="task"

source ~/.git-completion.bash

