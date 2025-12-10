#!/bin/bash

VERSION=$1
JAR_URL="http://localhost:8081/repository/maven-artifacts/com/bank/sample/spring-context/$VERSION/spring-context-$VERSION.jar"

curl -o app.jar $JAR_URL
docker build -t localhost:8082/spring-context:$VERSION .
docker push localhost:8082/spring-context:$VERSION
