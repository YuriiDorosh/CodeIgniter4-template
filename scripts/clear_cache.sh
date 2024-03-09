#!/bin/bash

read -p "Are you sure you want to clear the Redis cache? [y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    docker-compose exec redis redis-cli FLUSHALL
    echo "Redis cache cleared."
else
    echo "Operation cancelled."
fi
