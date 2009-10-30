alias ls='ls --classify --color=auto --human-readable --group-directories-first'

autoload -U compinit
compinit

bindkey -e

export BLOCKSIZE=K
export EDITOR=vim
export LESSHISTFILE=-
export PS1='[%n@%m %1~] '

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

case $TERM in
	*xterm*|rxvt*)
		precmd () {print -Pn "\e]2;%n@%m: (%55<...<%~)\a"}
	;;
esac

# $PATH
if [[ -n "${PATH/*$HOME\/bin:*/}" ]] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [[ -n "${PATH/*\/usr\/local\/bin:*/}" ]] ; then
    export PATH="/usr/local/bin:$PATH"
fi

if [[ -n "${PATH/\/sbin:*/}" ]] ; then
    export PATH="$PATH:/sbin"
fi

if [[ -n "${PATH/\/usr\/sbin:*/}" ]] ; then
    export PATH="$PATH:/usr/sbin"
fi

# $LANG
#export LANG="en_US.UTF-8"
#export LC_ADDRESS="en_US.UTF-8"
#export LC_COLLATE="C"
#export LC_CTYPE="en_US.UTF-8"
#export LC_IDENTIFICATION="en_US.UTF-8"
#export LC_MEASUREMENT="en_US.UTF-8"
#export LC_MESSAGES="C"
#export LC_MONETARY="en_US.UTF-8"
#export LC_NAME="en_US.UTF-8"
#export LC_NUMERIC="en_US.UTF-8"
#export LC_PAPER="en_US.UTF-8"
#export LC_TELEPHONE="en_US.UTF-8"
#export LC_TIME="en_US.UTF-8"

# $TERM
if [[ "${TERM}" == "rxvt-unicode" ]] ; then
    export TERM="rxvt-256color"

elif [[ "${TERM}" == "xterm" ]] ; then
    export TERM="xterm-256color"

elif [[ "${TERM}" == "screen" ]] ; then
    export TERM="screen-256color"

elif [[ "${TERM}" == "screen-bce" ]] ; then
    export TERM="screen-256color"
elif [[ "${TERM}" = "linux" ]] ; then
	#echo -en "\e]P01e2320"
	echo -en "\e]P0000000"
	#echo -en "\e]P8131327"
	echo -en "\e]P1992E43"
	echo -en "\e]P9BF3954"
	echo -en "\e]P239992E"
	echo -en "\e]PA47BF39"
	echo -en "\e]P3998E2E"
	echo -en "\e]PBBFB239"
	echo -en "\e]P42A3E8C"
	echo -en "\e]PC364FB3"
	echo -en "\e]P5842E99"
	echo -en "\e]PDA439BF"
	echo -en "\e]P62E9999"
	echo -en "\e]PE39BFBF"
	#echo -en "\e]P7bebebe"
	echo -en "\e]PFE4E4E4"
fi
