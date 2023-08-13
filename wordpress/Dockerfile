FROM debian:buster

RUN apt update -y && \
	apt upgrade -y && \
	apt install php7.3-fpm php7.3-common php7.3-mysql php7.3-xml php -y && \
	apt install curl -y


COPY wordpress /wordpress
COPY script.sh /scripts.sh
COPY configs/www.conf .

RUN chmod +x scripts.sh 

CMD ["sh", "scripts.sh"]