#! /usr/bash
docker stop rest-service
docker rmi rest-service -f
docker build -t rest-service .
docker run -p 5001:5001 -d --name rest-service rest-service
