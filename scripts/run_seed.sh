#!/bin/bash

SEEDER=${1:-} # Optional seeder name as first argument

if [ -z "$SEEDER" ]; then
    echo "Running all seeders..."
    docker-compose exec app php spark db:seed
else
    echo "Running seeder: $SEEDER"
    docker-compose exec app php spark db:seed $SEEDER
fi
