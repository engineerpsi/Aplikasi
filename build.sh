#!bin/bash
docker exec -i moe-mysql-app mysql -uroot -prootpassword moe_db < opensid.sql
