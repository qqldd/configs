function set_aliases() {
	# Alias
	alias rm='rm -i'
	alias cp='cp -i'
	alias mv='mv -i'
	alias sudo='sudo '
	alias dirs='dirs -v'
	alias ec='emacsclient -t -a ""'
	alias ecc='emacsclient -c -n -a "" ' #-F "((top .  130) (left . 400))"'
	alias eck='emacsclient -e "(kill-emacs)"'
}

function set_cuda_evn() {
	export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/cuda/lib	
	export CUDA_INSTALL_PATH=/usr/local/cuda
	export PATH=$PATH:$CUDA_INSTALL_PATH/bin
}

function set_perforce() {
	export P4CONFIG=".p4config"
	export P4EDITOR='emacsclient -t -a ""'
	export P4PORT=aamodt-pc3:1666
	if [[ $1 == "out" ]]; then
		export P4PORT=localhost:6416
		echo $P4PORT
	fi
}

function set_cudaver() {
    export CUDA_INSTALL_PATH=/usr/local/cuda$1
    export DYLD_LIBRARY_PATH=$CUDA_INSTALL_PATH/lib:$DYLD_LIBRARY_PATH
    export PATH=$CUDA_INSTALL_PATH/bin:$PATH
}

function set_dirs() {
	intersim2_root=~/Perforce/gpgpu_sim_research/intersim2/distribution	
	gpgpusim_root=~/Perforce/gpgpu_sim_research/fermi/distribution
}

export JYTHON_HOME=/usr/local/Cellar/jython/2.5.3/libexec

export CLASSPATH=$HOME/Dropbox/courseware/513/sym

set_aliases
set_dirs
set_cuda_evn
set_perforce
export EDITOR='emacsclient -t -a ""'
export LSCOLORS=exBxhxDxfxhxhxhxhxcxcx
ulimit -S -n 1024
source ~/Softwares/z/z.sh
