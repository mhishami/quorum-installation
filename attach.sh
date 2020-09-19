#!/bin/sh
#
node=$1

if [ "$node" = "" ]; then
	echo "USAGE: $0 <node>"
	exit 1
fi

geth attach node${node}/data/geth.ipc
