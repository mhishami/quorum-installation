#!/bin/sh
#

CURR=`pwd`
nodes=6

for n in `seq 0 ${nodes}`; do
	cd nodes/node${n}
	geth --datadir data init genesis.json
	cd ${CURR}
done

exit

cd nodes/node0
geth --datadir data init genesis.json

cd ../node1
geth --datadir data init genesis.json

cd ../node2
geth --datadir data init genesis.json

cd ../node3
geth --datadir data init genesis.json

cd ../node4
geth --datadir data init genesis.json

cd ..
