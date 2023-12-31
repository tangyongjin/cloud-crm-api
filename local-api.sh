# echo "brew services  start mysql" 


# echo "Modify IP of v2/application/config/database.php "

# local_ip=$(wifiip)
# echo $local_ip

# local_ip=$(wifiip) && sed -i '' "s/'hostname' => '[0-9.]*'/'hostname' => '$local_ip'/" v2/application/config/database.php


( docker stop crm-api-dev > /dev/null && echo Stopped container crm-api-dev && \
  docker rm crm-api-dev ) 2>/dev/null || true

docker run  -itd --rm  -p 9009:80 --name crm-api-dev  -v $PWD:/var/www/html --privileged=true php73 
