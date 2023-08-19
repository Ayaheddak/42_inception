SRC = docker-compose.yml

NAME = inception
all : ${NAME}

${NAME}:
	docker-compose -f ${SRC} up --build
re: fclean all
clean:     docker-compose -f ${SRC} down
fclean: docker-compose -f ${SRC} down --rmi all