#!/bin/sh
#

CURR=`pwd`
nodes=6
NODES=`seq 0 ${nodes}`


for n in $NODES; do
	mkdir -p nodes/node${n}/data/geth
done

cd nodes/node0
../../istanbul-tools/build/bin/istanbul setup --num $(($nodes + 1)) --nodes --quorum --save --verbose 

cd ${CURR}
LOG=accounts.log
cat /dev/null > $LOG
for n in $NODES; do
	geth --datadir nodes/node${n}/data account new < passphrase >> $LOG
done
