setup:
	docker compose run --rm app make setup

up-exist:
	docker compose up --abort-on-container-exist

up:
	docker compose up

down:
	docker compose down

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit

build:
	docker compose -f docker-compose.yml build app

push:
	docker compose -f docker-compose.yml push app

up-development:
	docker run -p 8080:8080 -e NODE_ENV=development nic11371/devops-for-programmers-project-74 make dev
