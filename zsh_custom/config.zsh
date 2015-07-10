function set_aliases() {
	# Alias
	alias rm='rm -i'
	alias cp='cp -i'
	alias mv='mv -i'
	alias sudo='sudo '
	alias dirs='dirs -v'
	alias ec='emacsclient -t -a ""'
	alias ecn='emacsclient -n'
	alias ecc='emacsclient -c -n -a "" ' #-F "((top .  130) (left . 400))"'
	alias eck='emacsclient -e "(kill-emacs)"'
}

function set_perforce() {
	export P4CONFIG="$HOME/.p4config"
}

function set_dirs() {
}

set_aliases
set_dirs
set_perforce
export LSCOLORS=exBxhxDxfxhxhxhxhxcxcx
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

