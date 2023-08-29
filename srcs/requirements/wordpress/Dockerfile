FROM debian:bullseye

RUN apt update -y && \
	apt upgrade -y && \
	apt install php7.4-fpm php7.4-common php7.4-mysql php7.4-xml php mariadb-client -y && \
	apt install curl -y && mkdir -p /run/php

COPY tools/www.conf /etc/php/7.4/fpm/pool.d/www.conf

WORKDIR /var/www/html
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

COPY tools/script.sh /scripts.sh

RUN chmod +x /scripts.sh 

CMD ["/scripts.sh"]
