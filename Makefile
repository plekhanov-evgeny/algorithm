up: docker-up
init: docker-down-clear docker-pull docker-build docker-up algorithm-composer-install
down: docker-down-clear
test: algorithm-test

docker-up:
	docker-compose up -d

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

algorithm-composer-install:
	docker-compose run --rm algorithm-php-cli composer install

algorithm-test:
	docker-compose run --rm algorithm-php-cli php vendor/bin/codecept run