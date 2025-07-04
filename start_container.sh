#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull 826695974250.dkr.ecr.us-east-1.amazonaws.com/demo-repo:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 aws-cicd-test
