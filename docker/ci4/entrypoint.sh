#!/bin/bash

chmod -R 777 /var/www/html/writable

exec docker-php-entrypoint php-fpm