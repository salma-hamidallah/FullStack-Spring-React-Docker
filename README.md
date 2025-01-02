# DevOps Spring Lab

This repository contains a Spring Boot application packaged with Maven, containerized using Docker, and managed with Docker Compose. The setup includes the following components:

- **Spring Boot Application**: A simple to-do application.
- **MySQL Database**: A MySQL service used by the application.
- **PhpMyAdmin**: A web interface for interacting with the MySQL database.
- **MySQL Cron Backup**: An automatic backup system for the MySQL database.

## Prerequisites

Before using the project, ensure that you have the following tools installed on your machine:

- [Java 17](https://adoptopenjdk.net/) or later
- [Maven](https://maven.apache.org/install.html)
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Steps to Use

Follow these steps to build and run the Spring Boot app with Docker Compose.

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/mehdiaitsaid/devops-spring.git
cd devops-spring
```

### 2. Build the Application
You need to build the Spring Boot application with Maven:
```bash
mvn clean package
```
This command compiles the Java source code and packages it into a .jar file located in the target/ directory.

### 3. Build the Docker Images
Once the application is built, you can proceed to build the Docker images. Run the following command to build the Docker images specified in the docker-compose.yml:

```bash
docker-compose build
```
This command will build the todo-app container and the other services as defined in the docker-compose.yml.

### 4. Start the Services with Docker Compose
After building the images, start the services (MySQL, PhpMyAdmin, and the Spring Boot app) with Docker Compose:

```bash
docker-compose up --build -d
```
This will:

- Build the Docker images if they aren't already built.
- Start the MySQL container with the app_db database.
- Start PhpMyAdmin on port 8081 for managing the database.
- Start the Spring Boot application on port 8080.
- The -d flag runs the containers in detached mode (in the background).

### 5. Stop the Services
To stop the running services, use the following command:

```bash
docker-compose down
```

### 6. Clean Up
If you want to remove all Docker containers, images, and volumes, use the following command:

```bash
docker-compose down --volumes --rmi all
```

