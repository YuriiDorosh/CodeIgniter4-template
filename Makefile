#SETUP############################################

run:
	cd public; sudo php -S 0.0.0.0:8030

docker_run_linux:
	sudo docker-compose build
	sudo docker-compose up

docker_stop_linux:
	sudo docker-compose down

docker_run_win:
	docker-compose build
	docker-compose up

docker_stop_win:
	docker-compose down

#MIGRATIONS########################################

migrate:
	php spark migrate

migrations_status:
	php spark migrate:status

delete_all_tables:
	php spark migrate:rollback

create_migration:
	echo php spark make:migration NameOfMigration

update_db:
	php spark migrate:latest

#SEEDS#############################################

create_seed:
	echo php spark make:seeder NameOfSeeder

all_seeds:
	php spark db:seed

some_seed:
	echo php spark db:seed ProductionProductsSeeder
	echo php spark db:seed ProductionDetailsSeeder
	echo php spark db:seed ProductionPropertySeeder
	echo php spark db:seed ProductionSubpropertySeeder

#DOCKER############################################

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	make down
	make up

build_linux:
	sudo docker-compose build

up_linux:
	sudo docker-compose up -d

down_linux:
	sudo docker-compose down

restart_linux:
	make down_linux
	make up_linux

#REDIS#############################################

clear_cache:
	redis-cli FLUSHALL

#FORMAT############################################

# sudo apt-get update
# sudo apt-get install php-xml
# sudo apt install php-codesniffer
format:
	./vendor/bin/phpcbf --standard=./configs/phpcs.xml app/ || true

format_from_composer:
	composer run format

lint:
	./vendor/bin/phplint  --configuration ./configs/.phplint.yml

lint_from_composer:
	composer run lint

check_format:
	./vendor/bin/phpcs --standard=./configs/phpcs.xml app/ > warnings

check_format_from_composer:
	composer run check_format

psalm:
	vendor/bin/psalm --config=./configs/psalm.xml

psalm_clear_cache:
	vendor/bin/psalm --clear-cache --config=./configs/psalm.xml

psalm_forced_start:
	make -B psalm