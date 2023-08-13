FROM debian:buster

RUN apt-get -y update && \
    apt-get -y upgrade && \
	apt update -y && \
	apt upgrade -y && \
	apt install php-fpm php-mysql -y && \
	apt install curl -y

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf /var/www/

EXPOSE 9000

CMD ["bash", "/var/www/setup.sh"]