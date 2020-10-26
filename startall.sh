#!/bin/bash
#
LOG="nodes/logs"
CURR=`pwd`
nodes=6

mkdir -p $LOG
for n in `seq 0 ${nodes}`; do
	cd nodes/node${n}
	echo "curr: `pwd`"
	PRIVATE_CONFIG=ignore nohup geth \
		--datadir data --nodiscover \
		--istanbul.blockperiod 5 --syncmode full --mine \
		--minerthreads 1 --verbosity 5 --networkid 10 \
		--rpc --rpcaddr 0.0.0.0 --rpcport "2200${n}" \
		--rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum,istanbul \
		--emitcheckpoints --port "3030${n}" 2>> "../logs/node${n}.log" &

	cd ${CURR}
done

