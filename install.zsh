#!/usr/bin/env zsh

MYDIR=${0:a:h}

echo $MYDIR

function link
echo "Linking spacemacs to ~/.emacs.d"
ln -sn ${MYDIR}/spacemacs $HOME/.emacs.d

echo "Linking .spacemacs to ~/.spacemacs"
ln -s ${MYDIR}/.spacemacs $HOME/

echo "Linking .tmux.conf to ~/.tmux.conf"
ln -s ${MYDIR}/.tmux.conf $HOME/

# echo "Linking .tmux/.tmux.conf to ~/.tmux.conf"
# ln -s ${MYDIR}/.tmux/.tmux.conf $HOME/

# echo "Linking .tmux/.tmux.conf.local to ~/.tmux.conf.local"
# ln -s ${MYDIR}/.tmux.conf.local $HOME/

echo "Linking .zshrc to ~/.zshrc"
ln -s ${MYDIR}/.zshrc $HOME/

echo "Linking .Xresources to ~/.Xresources"
ln -s ${MYDIR}/.Xresources $HOME/

echo "Linking .Xresources.d to ~/.Xresources.d"
ln -sn ${MYDIR}/.Xresources.d $HOME/

echo "Linking .cgdb to ~/.cgdb"
ln -sn ${MYDIR}/.cgdb $HOME/

echo "making dir ~/.config is not exsit"
mkdir $HOME/.config

echo "Linking items in .config to ~/.config"
for i in `ls .config`; do
  echo "Linking ${i} to ~/.config/${i}"
  ln -sn ${MYDIR}.config/${i} $HOME/.config/
done
