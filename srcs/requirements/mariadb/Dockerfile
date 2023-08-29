FROM debian:bullseye

RUN apt-get update \
    && apt install mariadb-server -y

ARG DB_NAME 
ARG DB_USER 
ARG DB_PASSWORD 
ARG DB_ROOT_PASSWORD

COPY ./tools/script.sh /var/local/bin/

RUN chmod +x /var/local/bin/script.sh

RUN /var/local/bin/script.sh

CMD  [ "mariadbd", "--bind-address=0.0.0.0" ]