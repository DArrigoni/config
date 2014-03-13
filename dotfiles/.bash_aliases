#!/bin/bash

# shortcut to vim
alias :e=vim

# alias less to whatever we set out pager to
alias less=$PAGER

# ls with showall, colors, and /'s after directories
alias ls="ls -hxX --color --group-directories-first "

# searches for given string in filenames in current and all subdirectories
function s { find . -name "*$1*" 2>/dev/null; }
# searches for given filename exactly in current and all subdirectories
function ss { find . -name "$1" 2>/dev/null; }

# grep customizations
alias grep='grep -Hns --binary-files=without-match --color=auto'

# diff with unified format (why use anything else?!)
alias diff='diff -U3'

# prints out the ps header and then displays all processes matching the given argument
function psg { ps -A | awk 'NR==1; /'$1'/&&!/awk/'; }

# Add an "alert" alias for long running commands. Use semicolor to execute it in sequence
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Bundle aliases
alias be='bundle exec'

# Rails Helper aliases
alias sprec='spring rspec'
alias sake='spring rake'
alias sails='spring rails'

alias unitspec='spring rspec -t ~js'
alias reqspec='spring rspec -t js'
