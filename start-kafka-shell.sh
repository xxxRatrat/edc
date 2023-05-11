#!/bin/bash
docker run --rm -p 9092:9092 -e KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 -v /var/run/docker.sock:/var/run/docker.sock -e HOST_IP=$1 -e ZK=$2 -i -t wurstmeister/kafka /bin/bash
