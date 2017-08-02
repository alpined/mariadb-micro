FROM alpine:3.6

# root filesystem
COPY rootfs /

# container builder, let sh run it
RUN /bin/sh /scripts/build.sh

# volumes
VOLUME ["/var/lib/mysql"]

# launch command
CMD ["/scripts/wrapper/mysqld.sh"]
