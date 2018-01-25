function set_aliases() {
  # Alias
  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'
  alias sudo='sudo '
  alias dirs='dirs -v'
  alias ec='emacsclient -a ""'
  alias ect='emacsclient -t -a ""'
  alias ecn='emacsclient -n'
  alias ecc='emacsclient -c -n -a ""'
  alias eck='emacsclient -e "(kill-emacs)"'
  alias emacsd='emacs --daemon'
  alias diff='colordiff'
  alias open='xdg-open'
}

function set_perforce() {
  export P4ENVIRO="$HOME/.p4config"
  export P4CONFIG=".p4config"
  export P4DIFF='p4merge'
  export P4EDITOR='emacsclient -a ""'
}

function set_dirs() {
}

set_aliases
set_dirs
set_perforce
export LSCOLORS=exBxhxDxfxhxhxhxhxcxcx
export EDITOR='emacsclient -a ""'
