FROM debian:bullseye

RUN apt-get update -y && \
    apt-get upgrade -y && \ 
    apt install php -y && \
    apt-get install -y openssl nginx 

 RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
	-subj "/C=MA/ST=BenGuerir/L=BenGuerir/O=1337/CN=www.heddak.ma/OU=www.heddak.ma/emailAddress=aya.heddak@um6p.ma" 

COPY ./conf/default /etc/nginx/sites-available/ 

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]