#!/bin/bash
SCRIPT_PATH=/vagrant/.vagrant
sudo docker swarm init --advertise-addr=$(hostname -I | awk '{print $2}')
sudo docker swarm join-token worker | grep docker > $SCRIPT_PATH/worker.sh
sudo docker swarm join-token manager | grep docker > $SCRIPT_PATH/manager.sh
sudo chmod a+x $SCRIPT_PATH/worker.sh $SCRIPT_PATH/manager.sh
sleep 10
