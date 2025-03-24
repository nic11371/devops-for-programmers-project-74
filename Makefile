compose-setup:
	docker-compose run --rm app make setup

compose-up-exist:
	docker-compose up --abort-on-container-exist

compose-up:
	docker-compose up

compose-down:
	docker-compose down

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

compose-build:
	docker-compose -f docker-compose.yml build app

compose-push:
	docker-compose -f docker-compose.yml push app

compose-up-production:
	docker run -p 8080:8080 -e NODE_ENV=development nic11371/devops-for-programmers-project-74 make dev
