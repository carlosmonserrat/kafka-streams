echo "******* List of all topics"
docker exec -it broker /bin/bash \
-c "kafka-topics  --zookeeper zookeeper:2181 --list"

echo -e "\e[33m"
echo "*** groups in kafka"
docker exec -it broker /bin/bash \
-c "kafka-consumer-groups  --list --bootstrap-server localhost:9092"
echo -e "\e[0m"

echo -e "\e[32m"
echo "******* Status enrichment service"
docker exec -it broker /bin/bash \
-c "kafka-consumer-groups --describe --group console-consumer-90868 --bootstrap-server localhost:9092"
echo -e "\e[0m"