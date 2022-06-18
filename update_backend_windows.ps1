
${imageName}="dji/cloud_api_sample:1.0.0"

(& docker ps -aqf "name=cloud_api_sample_1") | ForEach-Object { docker stop $_ }

(& docker ps -aqf "name=cloud_api_sample_1") | ForEach-Object { docker rm $_ }

(& docker images  -qf "reference=${imageName}") | ForEach-Object { docker rmi $_ }

Set-Location source/backend_service/

docker build -t ${imageName} .

