#! /usr/bash


#! /usr/bash
echo Stop container:
docker stop rest-service
echo Remove container
docker rm rest-service -f
echo Remove image:
docker rmi rest-service -f
echo Build image:
docker build -t rest-service .
echo Run container:
docker run -p 80:80 -d --name rest-service rest-service


