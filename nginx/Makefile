# Variables
IMAGE_NAME = my-nginx-image
CONTAINER_NAME = my-nginx-container
DOCKERFILE = DOCKERFILE
NGINX_CONF = default.conf

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the Docker container
run:
	docker run -d --name $(CONTAINER_NAME) -p 80:80 -p 443:443 $(IMAGE_NAME)

# Stop and remove the Docker container
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

# Stop, remove, and then build and run the Docker container
restart: stop build run

# Run a shell inside the Docker container
shell:
	docker exec -it $(CONTAINER_NAME) /bin/sh

.PHONY: build run stop restart shell