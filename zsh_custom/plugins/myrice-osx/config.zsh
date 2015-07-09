function set_perforce() {
	export P4CONFIG=".p4config"
	export P4EDITOR='emacsclient -t -a ""'
	export P4PORT=aamodt-pc08:1666
	if [[ $1 == "local" ]]; then
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

function change_sdk() {
	export MACOSX_DEPLOYMENT_TARGET=10.8
	export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk
}

function set_env() {
	export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin
}

set_env
set_dirs
set_cudaver
#change_sdk
set_perforce
export EDITOR='subl'
ulimit -S -n 1024
