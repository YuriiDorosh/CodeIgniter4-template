#!/bin/bash

# Check for Docker
if ! command -v docker &> /dev/null; then
    echo "Docker could not be found. Please install Docker."
    exit 1
fi

# Check for Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose could not be found. Please install Docker Compose."
    exit 1
fi

echo "Docker and Docker Compose are installed."
