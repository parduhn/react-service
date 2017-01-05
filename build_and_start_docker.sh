#! /usr/bash
docker build -t rest-service .
docker run -p 5001:5001 -d rest-service
