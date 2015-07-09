# tabname for iterm 2
function tabname() {
	export DISABLE_AUTO_TITLE="true"
	echo -e "\033];$1\007";
}

function brewlist() {
	if [[ $1 == "deps" ]]; then
		brew list | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ""; done
	elif [[ $1 == "uses" ]]; then
		brew list | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew uses --installed $cask | awk '{printf(" %s ", $0)}'; echo ""; done
	else
		echo "Usage: brewlist [deps, uses]"
	fi
}