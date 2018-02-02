#!/usr/bin/env bash
docker swarm init
for nodename in $@
do
    ssh $nodename "docker swarm join --token `docker swarm join-token worker -q` ${HOSTNAME}:2377"
done
