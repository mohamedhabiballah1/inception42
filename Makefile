
all : up

up : 
	@docker compose -f ./srcs/docker-compose.yml up -d

down : 
	@docker compose -f ./srcs/docker-compose.yml down

stop : 
	@docker compose -f ./srcs/docker-compose.yml stop

start : 
	@docker compose -f ./srcs/docker-compose.yml start

build : 
	@docker compose -f ./srcs/docker-compose.yml build --no-cache

status :
	@docker ps