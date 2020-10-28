#!/bin/sh
#

CURR=`pwd`
nodes=6

for n in `seq 0 ${nodes}`; do
	cd nodes/node${n}
	geth --datadir data init genesis.json
	cd ${CURR}
done

