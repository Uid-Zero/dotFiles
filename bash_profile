# ~/.bash_profile

# Default PATH
export PATH=/usr/share/Modules/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/sbin:/bin:/usr/games

# Setting Default Colors

export RED='\[\e[0;31m\]'
export GREEN='\[\e[0;32m\]'
export BCYAN='\[\e[1;36m\]'
export BWHITE='\[\e[1;37m\]'

# Default PS1

function smile_prompt()
{
# If exit code is 0 then :) if not then :(
if [ "$?" -eq "0" ]; then SC="${GREEN}:)"; else SC="${RED}:("; fi

# I AM ROOT or AM I ?
if [ $UID -eq 0 ]; then UC="${RED}"; else UC="${BWHITE}"; fi

HC="${BCYAN}"
RC="${BWHITE}"
DF='\[\e[0m\]'
PS1="[${UC}\u${RC}@${HC}\h ${RC}\W${DF}] ${SC}${DF} "
}

export PROMPT_COMMAND=smile_prompt

# Environment Variables

export HISTCONTROL=ignoredups
export HISTFILE=${HOME}/.bash_history
export LANG="en_US.UTF-8"

# Aliases

alias bc='bc -ql'
alias cal='cal -m'
alias cp='cp -i'
alias df='df -h -xtmpfs -xdevtmpfs'
alias ls='ls -F --color=auto'
alias ll='ls -lAh'
alias mv='mv -i'
alias rm='rm -i'
alias free='free -h'


if [[ -x "$(/usr/bin/which colordiff 2>/dev/null)" ]]; then
  alias diff='colordiff'
fi

if [[ -x "$(/usr/bin/which netstat 2>/dev/null)" ]]; then
    alias listening='netstat -launt | grep LISTEN --color=auto'
else
    alias listening='ss -tuna'
fi

if [[ -x "$(/usr/bin/which tree 2>/dev/null)" ]]; then
    alias tree='tree -N'
fi

# Kaomoji (DG ;))
alias disapprove='echo '\''ಠ_ಠ'\'''
alias kilroy='echo '\''ฅ^•ﻌ•^ฅ'\'''
alias rage='echo '\''(╯°□°）╯︵ ┻━┻'\'''
alias shrug='echo '\''¯\_(ツ)_/¯'\'''
alias stare='echo '\''(•_•)'\'''
alias sunglasses='echo '\''(■_■¬)'\'''
alias woohoo='echo \\\(ˆ˚ˆ\)/'



