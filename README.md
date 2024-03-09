# CodeIgniter 4 Template Project

This is a template project for CodeIgniter 4, a powerful PHP framework for building web applications. It comes pre-configured with Docker, Nginx, MySQL, Adminer, phplint, Psalm, and PHP_CodeSniffer to streamline your development process.

## Features

- Dockerized development environment
- Nginx web server configuration
- Custom PHP configuration (php.ini)
- MySQL database server
- Redis for data caching
- Adminer database management tool
- Automated code linting and analysis with phplint, Psalm, and PHP_CodeSniffer

## Requirements

Before getting started, ensure that you have the following software installed on your system:

- Docker
- Docker Compose

## Getting Started

To set up and run the project on your local machine, follow these steps:

### 1. Clone the Repository

```bash
git clone https://github.com/YuriiDorosh/CodeIgniter4-template.git
cd CodeIgniter4-template
```

### 2. Environment Configuration

Copy the example environment file and configure it as needed:

```
cp .env.example .env
```

### 3. Start Docker Containers

Run Docker Compose to start the development environment:

```
docker-compose up -d
```

This command will create and start the Docker containers defined in the docker-compose.yml file.

### 4. Install Composer Dependencies

```
docker-compose exec php composer install
```

### 5. Access the Application

Once the Docker containers are running, you can access the application in your web browser:

- CodeIgniter Application: http://localhost:8080
- Adminer (Database Management Tool): http://localhost:8081

### 6. Development Workflow

Running phplint

```
docker-compose exec php make phplint
```

Running Psalm

```
docker-compose exec php make psalm
```

Running PHP_CodeSniffer

```
docker-compose exec php make phpcs
```

### 7. Stopping the Containers

When you're done working on the project, you can stop the Docker containers:

```
docker-compose down
```
