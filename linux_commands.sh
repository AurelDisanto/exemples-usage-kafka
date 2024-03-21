cd ~/work

curl --output kafka_2.13-3.7.0.tgz https://downloads.apache.org/kafka/3.7.0/kafka_2.13-3.7.0.tgz

tar -zxvf kafka_2.13-3.7.0.tgz

kafka_2.13-3.7.0/bin/kafka-topics.sh \
    --bootstrap-server kafka-controller-0.kafka-controller-headless:9092,kafka-controller-1.kafka-controller-headless:9092,kafka-controller-2.kafka-controller-headless:9092 \
    --create --topic purchases \
    --partitions 20 \
    --replication-factor 3

chmod u+x producer.py

./producer.py getting_started.ini

chmod u+x consumer.py

./consumer.py getting_started.ini