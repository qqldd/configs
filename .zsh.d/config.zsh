# Alias
alias rm='rm -i'
alias sudo='sudo '
alias dirs='dirs -v'

export LSCOLORS=exBxhxDxfxhxhxhxhxcxcx

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/cuda/lib

ulimit -S -n 1024

set_cudaver() {
    export CUDA_INSTALL_PATH=/usr/local/cuda$1
    export DYLD_LIBRARY_PATH=$CUDA_INSTALL_PATH/lib:$DYLD_LIBRARY_PATH
    export PATH=$CUDA_INSTALL_PATH/bin:$PATH
}

gpgpusim_root=~/Perforce/gpgpu_sim_research/fermi_myrice/distribution

intersim2_root=~/Perforce/gpgpu_sim_research/intersim2/distribution

export JYTHON_HOME=/usr/local/Cellar/jython/2.5.3/libexec

export CLASSPATH=$HOME/Dropbox/courseware/513/sym

source ~/Softwares/z/z.sh
