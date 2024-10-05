default: 
	@echo "Available commands"
	@echo "make up           - Initialize containers"
	@echo "make down         - Stop nginx and FastAPI containers"
	@echo "make restart      - Restart containers"
	@echo "make build        - Build containers"

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose up -d --build --force-recreate

restart:
	docker-compose down
	docker-compose up -d