# Build Docker images
build:
    docker build -t nginx nginx
    # docker build -t wordpress wordpress
    # docker build -t mariadb mariadb

# Start the Docker Compose infrastructure
up:
    docker-compose up -d

# Stop and remove the Docker Compose infrastructure
down:
    docker-compose down

# Clean up Docker images
clean:
    docker image rm nginx

.PHONY: build up down clean
