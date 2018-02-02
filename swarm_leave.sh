#!/usr/bin/env bash
for nodename in $@
do
    ssh $nodename "docker swarm leave"
    sleep 1
    #docker node rm $nodename
done
docker swarm leave --force

