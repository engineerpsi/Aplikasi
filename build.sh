#!bin/bash
docker-compose up -d
docker cp app/. moe-php-app:/var/www/html
