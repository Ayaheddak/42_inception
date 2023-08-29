
SRC = srcs/docker-compose.yml

NAME = inception
all : ${NAME}

${NAME}:
	docker-compose -f ${SRC} up --build

up:
	docker-compose up --force-recreate

down:
	docker-compose -f ${SRC} down

clean:
	docker system prune -f
	docker-compose -f ${SRC} down -v --rmi all
	rm -rf /home/aheddak/data/Mariadb/*
	rm -rf /home/aheddak/data/Wordpress/*