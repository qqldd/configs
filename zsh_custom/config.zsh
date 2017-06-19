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
	export P4ENVIRO="$HOME/.p4config"
	export P4CONFIG=".p4config"
}

function set_dirs() {
}

set_aliases
set_dirs
set_perforce
export LSCOLORS=exBxhxDxfxhxhxhxhxcxcx

