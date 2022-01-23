#!/bin/bash

if [ ! -f "docker-compose.yml" ]; then
    1>&2 echo -e "\033[0;31mError\033[0m This command should be executed in the \033[0;33msame directory as the docker-compose.yml\033[0m file which has been used to start the Minecraft server container."
    exit 1
fi
