#!/bin/bash
echo "Pulling Docker image"
docker run \
--cap-add=NET_ADMIN \
docker.elastic.co/beats/packetbeat:7.6.1 \
setup -E setup.kibana.host=localhost:5601 \
-E output.elasticsearch.hosts=["localhost:9200"] 
