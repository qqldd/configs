# Useful functions

# tmux send command to all windows
function tmux-sendall() {
  command=$1
  session=$2
  if [[ -z $session ]]; then
    session=$(tmux display -p '#S') # default to current session
  fi
  windows=$(tmux list-windows)
  echo $windows |cut -d: -f1|xargs -I{} tmux send-keys -t $session:{} $command
}


# fzf related, please see https://github.com/junegunn/fzf/wiki/examples

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
