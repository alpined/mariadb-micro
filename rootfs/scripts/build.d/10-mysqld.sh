
apk add --no-cache mariadb-common libaio ncurses-libs libstdc++ pwgen pcre xz-libs

apk add --no-cache mariadb mariadb-client

tar cf /tmp/mariadb-light.tar /usr/bin/mysqld /usr/bin/mysql_install_db /usr/bin/my_print_defaults /usr/share/mariadb/ /usr/bin/mysql /usr/bin/mysqldump

apk del mariadb mariadb-client

tar xf /tmp/mariadb-light.tar

rm -fr /tmp/* /var/cache/apk/*
