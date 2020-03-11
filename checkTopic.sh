echo "Checking ..."

docker exec -it broker /bin/bash \
-c " kafka-console-consumer --bootstrap-server localhost:9092 --topic docker-connect-status --from-beginning"

