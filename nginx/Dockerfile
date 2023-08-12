FROM debian:buster

RUN apt-get update && \
    apt-get install -y openssl nginx && \
    rm -rf /var/lib/apt/lists/*

 RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
	-subj "/C=MA/ST=BenGuerir/L=BenGuerir/O=1337/CN=www.heddak.ma/OU=www.heddak.ma/emailAddress=aya.heddak@um6p.ma" 

COPY default /etc/nginx/sites-available/ 

COPY index.html /var/www/html/

# Expose ports 80 (HTTP) and 443 (HTTPS)
EXPOSE 80 443

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]