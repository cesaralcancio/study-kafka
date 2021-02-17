#!/bin/bash
echo "Running kafka server $1"
./bin/kafka-server-start.sh config/server$1.properties &