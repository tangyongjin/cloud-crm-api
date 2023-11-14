docker kill cloud-crm-api
docker rm   cloud-crm-api
docker run -itd --rm -p 9009:80 --name cloud-crm-api  -v /root/nanx/webhook/cloud-crm-api/:/var/www/html --privileged=true php73
