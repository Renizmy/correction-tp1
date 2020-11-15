#!/bin/bash
# Connexion à Docker
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
  
 #build
docker build -t $DOCKER_USERNAME/tp2-devops:tp_database database
docker build -t $DOCKER_USERNAME/tp2-devops:tp_simple-api simple-api
docker build -t $DOCKER_USERNAME/tp2-devops:tp_httpd httpd
docker build -t $DOCKER_USERNAME/tp2-devops:tp_devops-front devops-front


docker push $DOCKER_USERNAME/tp2-devops:tp_database
docker push $DOCKER_USERNAME/tp2-devops:tp_simple-api
docker push $DOCKER_USERNAME/tp2-devops:tp_httpd
docker push $DOCKER_USERNAME/tp2-devops:tp_devops-front
