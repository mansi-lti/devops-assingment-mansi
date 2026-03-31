#!/bin/bash

echo "Starting SonarQube scan.."

#check if SONAR_TOKEN is set
if [-z "$SONAR_TOKEN" ]; then
  echo "Error: SONAR_TOKEN is not set"
  exit 1
fi

#Run SoanrQube scan using token
mvn soanr:sonar \ 
  -Dsonar.host.url=htpp://localhost:9000 \
  -Dsonar.login=$SONAR_TOKEN

echo "SonarQube scan completed!"
