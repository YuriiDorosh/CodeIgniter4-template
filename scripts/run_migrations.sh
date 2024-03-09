#!/bin/bash

echo "Running migrations..."
docker-compose exec app php spark migrate
