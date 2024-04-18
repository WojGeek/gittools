#!/usr/bin/bash

# create/update container
# 16.4.2024, 14h19

COMPOSE_FILE_OF_SERVICE=$1
#PROJECT_NAME=$2


if [ -z "$COMPOSE_FILE_OF_SERVICE" ]  ;  then
#if [ -z "$COMPOSE_FILE_OF_SERVICE" ] || [ -z "$PROJECT_NAME" ] ;  then
    clear
    #echo -e "Require two args"
    #echo -e "\n $0  <path/file.yaml> <name>\n"
    echo -e "\n $0  <path/file.yaml> \n"
    echo -e "\t <path/file.yaml> - Composer pathfile from service/container"
    #echo -e "\t <name> - Project name"
    exit 0
fi

#sudo docker compose -p $PROJECT_NAME -f $COMPOSE_FILE_OF_SERVICE up -d
sudo docker compose -f $COMPOSE_FILE_OF_SERVICE up -d
