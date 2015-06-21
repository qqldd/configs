# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Advanced Prompt
if [ $color_prompt=yes ]; then
	PS1='\n\[\e[1;31m\][\w]\[\e[0m\] \[\e[1;35m\][ \[\e[1;34m\]$(ls -1 | wc -l | sed "s: ::g") files \[\e[1;32m\]$(ls -lah | grep -m 1 total | sed "s/total //")B\[\e[0m\] \[\e[1;35m\]]\n`a=$?;if [ $a -ne 0 ]; then echo -ne "\[\e[01;36;41m\]{$a}"; fi`\[\e[01;34m\][\t \u]\[\e[00m\] \[\e[01;34m\]\W`[[ -d .git ]] && echo -ne "\[\e[33;40m\](branch:$(git branch | sed -e "/^ /d" -e "s/* \(.*\)/\1/"))\[\e[01;32m\]\[\e[00m\]"`\[\e[01;34m\] \$ \[\e[00m\]'
	# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='\n[\w] [ $(ls -1 | wc -l | sed "s: ::g") files $(ls -lah | grep -m 1 total | sed "s/total //")b ]\n`a=$?;if [ $a -ne 0 ]; then echo -ne "{$a}"; fi`[\t \u] \W`[[ -d .git ]] && echo -ne "(branch:$(git branch | sed -e "/^ /d" -e "s/* \(.*\)/\1/"))"` \$ '
	# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt


# alias
alias rm='rm -i'
alias cp='cp -i'
alias ls='ls -G'
alias ll='ls -l'
alias sudo='sudo '
alias grep='grep --color=auto'
alias dirs='dirs -v'

alias ec='emacsclient -t -a ""'

# CUDA
export CUDAHOME=/usr/local/cuda
export PATH=$PATH:${CUDAHOME}/bin
export DYLD_LIBRARY_PATH=${CUDAHOME}/lib:$DYLD_LIBRARY_PATH

# Perforce
export P4CONFIG=".p4config"
export P4EDITOR='emacsclient -t -a ""'

# Path
export PATH=~/bin:$PATH

