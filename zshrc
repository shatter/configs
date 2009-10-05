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
	echo -en "\e]P8709080"
	echo -en "\e]P1705050"
	echo -en "\e]P9dca3a3"
	echo -en "\e]P260b48a"
	echo -en "\e]PAc3bf9f"
	echo -en "\e]P3dfaf8f"
	echo -en "\e]PBf0dfaf"
	echo -en "\e]P4506070"
	echo -en "\e]PC94bff3"
	echo -en "\e]P5dc8cc3"
	echo -en "\e]PDec93d3"
	echo -en "\e]P68cd0d3"
	echo -en "\e]PE93e0e3"
	#echo -en "\e]P7dedede"
	echo -en "\e]PFdfdfdf"
fi
