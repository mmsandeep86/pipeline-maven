#!/bin/bash
echo "******************************"
echo "******* Tesing the Code *********"
echo "******************************"

#docker run -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DskipTests clean package
docker run -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
