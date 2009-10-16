alias ls='ls --classify --color=auto --human-readable --group-directories-first'

autoload -U compinit
compinit

bindkey -e

export BLOCKSIZE=K
export EDITOR=vim
export LESSHISTFILE=-
export PS1='[%n@%m %1~] '

#eval unset ${!LC_*} LANG
#export LANG="en_US.UTF-8"
#export LC_COLLATE="C"

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
	echo -en "\e]P81e1e27"
	echo -en "\e]P1d36265"
	echo -en "\e]P9ef8171"
	echo -en "\e]P260b48a"
	echo -en "\e]PAc3bf9f"
	echo -en "\e]P3dfaf8f"
	echo -en "\e]PBf0dfaf"
	echo -en "\e]P47a7ab0"
	echo -en "\e]PC4186be"
	echo -en "\e]P5a97a99"
	echo -en "\e]PDdc8cc3"
	echo -en "\e]P606989a"
	echo -en "\e]PE71bebe"
	#echo -en "\e]P7bebebe"
	echo -en "\e]PFe4e4e4"
fi
