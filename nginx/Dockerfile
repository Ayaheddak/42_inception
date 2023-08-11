# Use the official NGINX image as the base image
# FROM debian:buster

# RUN apt -y update && apt install -y nginx && apt install openssl -y

# COPY ./nginx.conf /etc/nginx/nginx.conf

# COPY ./*.html /usr/share/nginx/html/

# # RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
# #     -keyout /etc/ssl/private/nginx.key \
# #     -out /etc/ssl/certs/nginx.crt \
# #     -subj "/C=MA/ST=Rabat/L=Rabat/O=School21/OU=Wave8/CN=bcaffere"
# # Remove the default NGINX configuration
# # RUN rm /etc/nginx/conf.d/default.conf

# # Copy `ustom HTML file to the container
# COPY index.html etc/nginx/sites-enabled/default

# # Expose port 80 (HTTP)
# EXPOSE 80

# Use a minimal Debian Linux distribution as the base image
FROM debian:latest

RUN apt-get update && \
    apt-get install -y openssl nginx && \
    rm -rf /var/lib/apt/lists/*

 RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
	-subj "/C=MA/ST=BenGuerir/L=BenGuerir/O=1337/CN=www.heddak.ma/OU=www.heddak.ma/emailAddress=aya.heddak@um6p.ma" 

COPY default.conf /etc/nginx/nginx.conf 
# COPY index1.html /var/www/html/

# Expose ports 80 (HTTP) and 443 (HTTPS)
EXPOSE 80 443


# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]