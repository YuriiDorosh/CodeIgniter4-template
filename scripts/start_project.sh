#!/bin/bash

# Load Environment or use default
ENVIRONMENT=${1:-development}

# Check Docker and Docker Compose availability
./scripts/check_docker.sh || exit 1

echo "Starting project in $ENVIRONMENT mode..."
docker-compose -f docker-compose.yml -f docker-compose.$ENVIRONMENT.yml up -d
