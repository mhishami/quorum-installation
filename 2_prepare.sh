#!/bin/sh
#

mkdir -p node0/data/geth
mkdir -p node1/data/geth
mkdir -p node2/data/geth
mkdir -p node3/data/geth
mkdir -p node4/data/geth
 
cd node0
../istanbul-tools/build/bin/istanbul setup --num 5 --nodes --quorum --save --verbose 

cd ..
LOG=accounts.log
geth --datadir node0/data account new < passphrase > $LOG
geth --datadir node1/data account new < passphrase >> $LOG
geth --datadir node2/data account new < passphrase >> $LOG
geth --datadir node3/data account new < passphrase >> $LOG
geth --datadir node4/data account new < passphrase >> $LOG
