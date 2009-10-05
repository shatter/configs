shopt -s extglob

#eval unset ${!LC_*} LANG
#export LANG="en_US.UTF-8"
#export LC_COLLATE="C"
#export PS1='[\u@\h \w] \$ '
export PS1="[\h \w]\$ "

#PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

case $TERM in
	xterm*)
		PS1="\[\033]0;\u@\h: \w\007\][\u@\h: \w]\$ "
		;;
	*)
		PS1="\\u@\\h \\w \\$ "
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
fi
