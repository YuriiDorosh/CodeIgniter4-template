# Project setup commands
#-------------------------------------------------

# Run PHP's built-in server for the public directory
run:
	cd public; sudo php -S 0.0.0.0:8030

# Build and start Docker containers (Linux)
docker_run_linux:
	sudo docker-compose build
	sudo docker-compose up

# Stop Docker containers (Linux)
docker_stop_linux:
	sudo docker-compose down

# Build and start Docker containers (Windows)
docker_run_win:
	docker-compose build
	docker-compose up

# Stop Docker containers (Windows)
docker_stop_win:
	docker-compose down

# Database migrations
#-------------------------------------------------

# Run all new migrations to update the database schema
migrate:
	php spark migrate

# Show the current status of migrations
migrations_status:
	php spark migrate:status

# Rollback all database migrations, effectively deleting all tables
delete_all_tables:
	php spark migrate:rollback

# Placeholder for creating a new migration file
create_migration:
	echo php spark make:migration NameOfMigration

# Shortcut to update the database to the latest migration
update_db:
	php spark migrate:latest

# Database seeding
#-------------------------------------------------

# Placeholder for creating a new seeder file
create_seed:
	echo php spark make:seeder NameOfSeeder

# Run all database seeders
all_seeds:
	php spark db:seed

# Docker management
#-------------------------------------------------

# Build Docker images based on the docker-compose.yml
build:
	docker-compose build

# Start Docker containers in detached mode
up:
	docker-compose up -d

# Stop and remove Docker containers
down:
	docker-compose down

# Restart Docker containers
restart:
	make down
	make up

# Linux-specific Docker management commands
build_linux:
	sudo docker-compose build

up_linux:
	sudo docker-compose up -d

down_linux:
	sudo docker-compose down

restart_linux:
	make down_linux
	make up_linux

# Redis commands
#-------------------------------------------------

# Clear all data from Redis cache
clear_cache:
	redis-cli FLUSHALL

# Redis commands within Docker
#-------------------------------------------------

# Clear the Redis cache within Docker
# This command connects to the Redis container and executes the `FLUSHALL` command via redis-cli,
# which deletes all keys from all databases in Redis, effectively clearing the cache.
# Use with caution, as this cannot be undone and will remove all data stored in Redis.
clear_cache_docker:
	docker-compose exec redis redis-cli FLUSHALL

# View logs for the Redis service
# This command retrieves and displays the logs for the Redis container,
# which is useful for debugging and monitoring Redis activity.
redis_logs:
	docker-compose logs redis

# Stop the Redis service in Docker
# This stops the Redis container without removing it, allowing you to start it again later
# without having to rebuild or recreate the container.
redis_docker_stop:
	docker-compose stop redis

# Start the Redis service in Docker
# If the Redis container was previously stopped using `docker-compose stop redis`,
# this command restarts it without needing to recreate the container.
redis_docker_start:
	docker-compose start redis

# Code formatting and linting
#-------------------------------------------------

# Automatically fix PHP code style issues
format:
	./vendor/bin/phpcbf --standard=./configs/phpcs.xml app/ || true

# Run format using Composer script
format_from_composer:
	composer run format

# Lint PHP files for syntax errors
lint:
	./vendor/bin/phplint  --configuration ./configs/.phplint.yml

# Run lint using Composer script
lint_from_composer:
	composer run lint

# Check PHP code style for issues
check_format:
	./vendor/bin/phpcs --standard=./configs/phpcs.xml app/ > warnings

# Run check_format using Composer script
check_format_from_composer:
	composer run check_format

# Psalm static analysis
#-------------------------------------------------

# Run Psalm for static analysis
psalm:
	vendor/bin/psalm --config=./configs/psalm.xml

# Clear Psalm's cache
psalm_clear_cache:
	vendor/bin/psalm --clear-cache --config=./configs/psalm.xml

# Force Psalm to run even if up-to-date
psalm_forced_start:
	make -B psalm

# Adminer Commands
#-------------------------------------------------

# Start the Adminer service in Docker
adminer_docker_start:
	docker-compose start adminer

# Stop the Adminer service in Docker
adminer_docker_stop:
	docker-compose stop adminer

# Restart the Adminer service in Docker
adminer_docker_restart:
	docker-compose restart adminer

# Connect to the Adminer container
adminer_shell:
	docker-compose exec adminer sh

# MySQL Commands
#-------------------------------------------------

# Start the MySQL service in Docker
mysql_docker_start:
	docker-compose start mysql

# Stop the MySQL service in Docker
mysql_docker_stop:
	docker-compose stop mysql

# Restart the MySQL service in Docker
mysql_docker_restart:
	docker-compose restart mysql

# Connect to the MySQL container
mysql_shell:
	docker-compose exec mysql bash

# Nginx Commands
#-------------------------------------------------

# Start the Nginx service in Docker
nginx_docker_start:
	docker-compose start nginx

# Stop the Nginx service in Docker
nginx_docker_stop:
	docker-compose stop nginx

# Restart the Nginx service in Docker
nginx_docker_restart:
	docker-compose restart nginx

# Connect to the Nginx container
nginx_shell:
	docker-compose exec nginx sh