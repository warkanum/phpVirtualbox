#!/bin/bash
docker stop vbox_http &> /dev/null
docker rm vbox_http &> /dev/null
docker run --name vbox_http --restart=always -p 8082:80 -e SRV1_PORT_18083_TCP=172.17.0.1:18083 -e SRV1_NAME=Avi -e SRV1_USER=vbox -e SRV1_PW='vbox@2018' -d wk/phpvirtualbox
