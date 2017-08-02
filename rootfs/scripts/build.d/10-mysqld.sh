
sed -i 's/dl-cdn.alpinelinux.org/local.sudhaker.com/' /etc/apk/repositories

apk add --no-cache mariadb-common libaio ncurses-libs libstdc++ pwgen

apk add --no-cache mariadb mariadb-client

tar cf /tmp/mariadb-light.tar /usr/bin/mysqld /usr/bin/mysql_install_db /usr/bin/my_print_defaults /usr/share/mysql/ /usr/bin/mysql /usr/bin/mysqldump

apk del mariadb mariadb-client

tar xf /tmp/mariadb-light.tar

sed -i 's/local.sudhaker.com/dl-cdn.alpinelinux.org/' /etc/apk/repositories

rm -fr /tmp/* /var/cache/apk/*
