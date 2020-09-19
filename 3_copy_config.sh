#!/bin/sh
#
cp node0/genesis.json node1
cp node0/genesis.json node2
cp node0/genesis.json node3
cp node0/genesis.json node4
cp node0/static-nodes.json node0/data/
cp node0/static-nodes.json node1/data/
cp node0/static-nodes.json node2/data/
cp node0/static-nodes.json node3/data/
cp node0/static-nodes.json node4/data/
cp node0/0/nodekey node0/data/geth
cp node0/1/nodekey node1/data/geth
cp node0/2/nodekey node2/data/geth
cp node0/3/nodekey node3/data/geth
cp node0/4/nodekey node4/data/geth
