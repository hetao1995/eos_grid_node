#!/bin/bash
nohup nodeos -e -p eosio --delete-all-blocks > nodeos.out 2>&1 & 
sleep 1s 
python3 createHome.py
nohup node main.js > node.out 2>&1 & 

