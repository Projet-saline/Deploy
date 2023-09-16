#!/bin/bash

docker-compose -f ./Gateway/docker-compose.yml down
docker-compose -f ./Front/docker-compose.yml down 

docker network rm common-network
docker network create common-network

docker-compose -f ./Gateway/docker-compose.yml up -d --build
docker-compose -f ./Front/docker-compose.yml up -d --build
