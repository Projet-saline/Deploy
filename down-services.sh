#!/bin/bash


docker-compose -f ./Gateway/docker-compose.yml down
docker-compose -f ./Front/docker-compose.yml down 

docker network rm common-network