#!/bin/bash

imageName="dji/cloud_api_sample:1.0.0"

sudo docker stop $(sudo docker ps -aqf "name=cloud_api_sample_1")

sudo docker rm $(sudo docker ps -aqf "name=cloud_api_sample_1")

sudo docker rmi $(sudo docker images  -qf "reference=${imageName}")

cd source/backend_service/

sudo docker build -t ${imageName} .

