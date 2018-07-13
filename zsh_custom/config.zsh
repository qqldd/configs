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
  [[ "$(uname -s)" == "Linux" ]] && alias open='xdg-open'
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

# less highlight!
if [[ -f "/usr/share/source-highlight/src-hilite-lesspipe.sh" ]]; then
  export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
  export LESS=" -R "
fi

# key shortcuts
# Runs zle down-case-word when run on a non-empty line, and ls otherwise.
function _magic-alt-l () {
  if [[ -z "$BUFFER" ]]; then
    BUFFER="ls"
    zle accept-line
  else
    zle down-case-word
  fi
}
zle -N _magic-alt-l

bindkey '\el' _magic-alt-l

