#!/bin/sh
#
cp nodes/node0/genesis.json nodes/node1
cp nodes/node0/genesis.json nodes/node2
cp nodes/node0/genesis.json nodes/node3
cp nodes/node0/genesis.json nodes/node4
cp nodes/node0/static-nodes.json nodes/node0/data/
cp nodes/node0/static-nodes.json nodes/node1/data/
cp nodes/node0/static-nodes.json nodes/node2/data/
cp nodes/node0/static-nodes.json nodes/node3/data/
cp nodes/node0/static-nodes.json nodes/node4/data/
cp nodes/node0/0/nodekey nodes/node0/data/geth
cp nodes/node0/1/nodekey nodes/node1/data/geth
cp nodes/node0/2/nodekey nodes/node2/data/geth
cp nodes/node0/3/nodekey nodes/node3/data/geth
cp nodes/node0/4/nodekey nodes/node4/data/geth
