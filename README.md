<div align="center">

# CodeIgniter 4 Template Project

This is a template project for CodeIgniter 4, a powerful PHP framework for building web applications. It comes pre-configured with Docker, Nginx, MySQL, Adminer, phplint, Psalm, and PHP_CodeSniffer to streamline your development process.

<img src="https://socialify.git.ci/YuriiDorosh/CodeIgniter4-template/image?font=Source%20Code%20Pro&forks=1&issues=1&language=1&name=1&owner=1&pattern=Plus&pulls=1&stargazers=1&theme=Dark" alt="guilyx" width="700" height="300" />

[![View Counter](https://views.whatilearened.today/views/github/YuriiDorosh/CodeIgniter4-template.svg)](https://views.whatilearened.today/views/github/YuriiDorosh/Information-Theory-and-Coding)
![GitHub repo size](https://img.shields.io/github/repo-size/YuriiDorosh/CodeIgniter4-template)
![GitHub License](https://img.shields.io/github/license/YuriiDorosh/CodeIgniter4-template)
![GitHub issues](https://img.shields.io/github/issues/YuriiDorosh/CodeIgniter4-template)
![GitHub last commit](https://img.shields.io/github/last-commit/YuriiDorosh/CodeIgniter4-template)
![GitHub contributors](https://img.shields.io/github/contributors/YuriiDorosh/CodeIgniter4-template)

</div>

## 🚀 Features

- **Dockerized Environment:** Jumpstart development with containers for PHP, Nginx, MySQL, and Redis.
- **Web Server:** Pre-configured Nginx for robust performance.
- **Database Ready:** MySQL setup for data storage and Redis for fast data caching.
- **Development Tools:** Integrated Adminer, phplint, Psalm, and PHP_CodeSniffer to ensure code quality.
- **Custom PHP Configuration:** Tailored php.ini for optimal development and production environments.

## 🔧 Requirements

Before getting started, ensure that you have the following software installed on your system:

- Docker
- Docker Compose

## 🛠 Getting Started

To set up and run the project on your local machine, follow these steps:

### 1. Clone the Repository

```bash
git clone https://github.com/YuriiDorosh/CodeIgniter4-template.git
cd CodeIgniter4-template
```

### 2. Environment Configuration

Copy the example environment file and configure it as needed:

```
cp env .env
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
## 📚 Documentation

For detailed documentation about CodeIgniter 4, visit the [official documentation](https://www.codeigniter.com/user_guide/intro/index.html).

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.