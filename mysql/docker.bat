echo begin....
docker kill mysql
docker rm mysql
docker run -d -p 3306:3306 -v E:\workspace\docker\mysqldata:/var/lib/mysql  --privileged=true -e MYSQL_ROOT_PASSWORD=111111 --name mysql mysql:5.7.18 --character_set_server=utf8
pause
echo installed....

