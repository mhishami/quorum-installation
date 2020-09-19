#!/bin/sh
#

mkdir -p nodes/node0/data/geth
mkdir -p nodes/node1/data/geth
mkdir -p nodes/node2/data/geth
mkdir -p nodes/node3/data/geth
mkdir -p nodes/node4/data/geth
 
cd nodes/node0
../../istanbul-tools/build/bin/istanbul setup --num 5 --nodes --quorum --save --verbose 

cd ../..
LOG=accounts.log
geth --datadir nodes/node0/data account new < passphrase > $LOG
geth --datadir nodes/node1/data account new < passphrase >> $LOG
geth --datadir nodes/node2/data account new < passphrase >> $LOG
geth --datadir nodes/node3/data account new < passphrase >> $LOG
geth --datadir nodes/node4/data account new < passphrase >> $LOG
