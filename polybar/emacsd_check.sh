#!/bin/bash
emacsclient -e '(daemonp)' &> /dev/null
ret=$?

if [ "$ret" -eq 0 ];
then
    echo "%{F#00AAFF}E"
    echo ${BLOCK_BUTTON}
    exit 0
else
    echo "%{F#FF00AA}E"
    echo ${BLOCK_BUTTON}
    exit 1
fi
