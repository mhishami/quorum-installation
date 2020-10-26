#!/bin/sh
#
nodes=6
NODES=`seq 1 ${nodes}`

for n in `seq 1 ${nodes}`; do
	cp nodes/node0/genesis.json nodes/node${n}
	cp nodes/node0/static-nodes.json nodes/node${n}/data/
done

for n in `seq 0 ${nodes}`; do
	cp nodes/node0/${n}/nodekey nodes/node${n}/data/geth
done


