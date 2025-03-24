compose-setup:
	docker-compose run --rm app make setup

compose-up-exist:
	docker-compose up --abort-on-container-exist

compose-up:
	docker-compose up

compose-down:
	docker-compose down

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
