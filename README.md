## What is this container?
This **extremely tiny container** is built using secure Alpine-Linux. Just **~12MB** (becomes ~36MB when uncompressed). Can you believe it? Enjoy!

## How to run it?

Simple test 
```
docker run --name=mariadb-micro -d alpined/mariadb-micro
```

Or expose port and specify your own data folder through volume mounting
```
docker run --name=mariadb-micro -d --restart=unless-stopped \
-p 3306:3306 -v /var/lib/mysql:/var/lib/mysql \
alpined/mariadb-micro
```
... and your mysql server is ready!

Your root password is auto-generated and printed in output log if not specified in environment variable (`-e MYSQL_ROOT_PASSWORD=my-secret-pw`)
```
docker logs mariadb-micro
```

Test it! :-)
```
docker exec -it mariadb-micro /bin/sh
```

Available commands from mysql-client package -> `/usr/bin/mysql` & `/usr/bin/mysqldump`

## What are available volume mounts?

Pre-defined mounts

- /var/lib/mysql -> data folder for mysql

