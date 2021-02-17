# study-kafka
Practicing Kafka

## Download Kafka
https://www.apache.org/dyn/closer.cgi?path=/kafka/2.7.0/kafka_2.13-2.7.0.tgz

## Start Zookeeper & Kafka
* cp -p ~/Downloads/kafka_2.13-2.7.0.tgz .
* tar zxf kafka_2.13-2.7.0.tgz
* cd kafka_2.13-2.7.0
* bin/zookeeper-server-start.sh config/zookeeper.properties
* (em outra aba)
* bin/kafka-server-start.sh config/server.properties

## Create topic and publish & subscribe to messages

* bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic NEW_ORDER
* bin/kafka-topics.sh --list --bootstrap-server localhost:9092
* bin/kafka-console-producer.sh --broker-list localhost:9092 --topic NEW_ORDER 
* (enter the message to the topic)
* bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic NEW_ORDER --from-beginning
* (from beginning is optional)

## Utils
* bin/kafka-topics.sh --bootstrap-server localhost:9092 --list
* bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe
* bin/kafka-topics.sh --alter --zookeeper localhost:2181 --topic ECOMMERCE_NEW_ORDER --partitions 3
* bin/kafka-consumer-groups.sh --all-groups --bootstrap-server localhost:9092 --describe

## Log and Records
Kafka stores the logs (the records) by default on /tmp/ folder, to change that we need to update the config/server.properties (for kafka) and config/zookeeper.properties for zookeeper.
* log.dirs for config/server.properties
* dataDir for config/zookeeper.properties

## Cluster
* cp -p config/server.properties config/server-2.properties
* Update the broker id, the port and the log path (different from the server1)

