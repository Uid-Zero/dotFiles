# ~/.bashrc

# Most of the stuff is going to be in ~/.bash_profile

if [[ -r ${HOME}/.bash_profile ]]; then
  . ${HOME}/.bash_profile
fi

# Run a Global Config if exists

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

GOPATH=$HOME/go
function _update_ps1() {
	    PS1="$($GOPATH/bin/powerline-go -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
