#!/bin/bash

echo "Starting CI/CD pipeline..."

#step 1: Build
echo "Building application"
mvn clean install

#step 2: Unit Testing
echo "Running tests..."
mvn test

#step 3: SonarQube Scan
echo "Running SonarQube analysis.."
mvn sonar:sonar

#step 4: Docker Build
echo "Building Docker iamge.."
docker build -t myapp:latest

#step 5: Push Docker Image
echo "Pushing Docker image.."
docker tag myapp:latest jfrog.io/myrepo/myapp:latest
docker push jfrog.io/myrepo/myapp:latest

#step 6: Deploy to kubernetes
echo "Deploying to kubernetes"
kubectl apply -f deployment.yaml

echo "CI/CD pipeline completed successfully"
