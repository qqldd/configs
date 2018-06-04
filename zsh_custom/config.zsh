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
  export P4DIFF='colordiff'
  export P4EDITOR='emacsclient -a "" -t'
  export P4MERGE='ediff_merge'
}

function set_dirs() {
}

function set_keybindings() {
}

set_aliases
set_dirs
set_perforce
set_keybindings

export LSCOLORS=exBxhxDxfxhxhxhxhxcxcx
export EDITOR='emacsclient -a "" -t'
export PKG_CONFIG_PATH=$HOME/usr/lib/pkgconfig

