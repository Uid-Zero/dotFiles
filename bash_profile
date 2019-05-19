# ~/.bash_profile

# Default PATH
export PATH=/usr/share/Modules/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/sbin:/bin:/usr/games

# Setting Default Colors

export RED='\[\e[0;31m\]'
export GREEN='\[\e[0;32m\]'
export BCYAN='\[\e[1;36m\]'
export BWHITE='\[\e[1;37m\]'

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

