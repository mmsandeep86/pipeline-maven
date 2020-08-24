#!/bin/bash
echo "******************************"
echo "******* Building JAR *********"
echo "******************************"

WORKSPACE=/var/lib/jenkins/workspace/pipeline-docker-maven
#docker run -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DskipTests clean package
docker run -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
