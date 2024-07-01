# Dockerized Fullstack Application

## Overview

This repository hosts a Dockerized Full-Stack Application built with Node.js, Express, and MongoDB. The project aims to provide a convenient development environment encapsulated within Docker containers. It simplifies the setup and running of a local version of your application.

## Why Use Docker?

### Benefits of Docker

- **Isolation**: Docker containers encapsulate your application and its dependencies, ensuring consistency and preventing conflicts between development and production environments.

- **Portability**: Docker containers can run on various platforms without modification, making it easy to move applications between different environments.

- **Efficiency**: Docker containers are lightweight and start quickly, reducing resource overhead and speeding up development and deployment processes.

- **Scalability**: Docker facilitates the scaling of applications by creating multiple containers from a single image, making it suitable for both small projects and large-scale applications.

- **Dependency Management**: Docker enables you to define dependencies and configurations within a Dockerfile, ensuring that your application runs consistently across different environments.

## Key Features

- **Full-Stack Application**: This project demonstrates the development of a full-stack web application, including the backend (Node.js) and frontend (EJS templates).

- **Database Integration**: MongoDB is used as the database to store application data, and it is containerized using Docker for easy setup.

- **Docker Compose**: Docker Compose simplifies multi-container Docker application orchestration, making it effortless to manage both the application and database containers together.

## Directory Structure

```bash
.
├── app
│   ├── Dockerfile
│   ├── index.js
│   ├── models
│   │   └── Item.js
│   ├── node_modules
│   ├── package.json
│   └── views
│       └── index.ejs
├── docker-compose.yml
└── README.md
```

### Key Directories and Files

- `app/`: Contains the Node.js application code.
  - `Dockerfile`: Defines the Docker image for the Node.js application.
  - `index.js`: Main application file.
  - `models/`: Houses application data models.
  - `node_modules/`: Holds Node.js dependencies.
  - `package.json`: Specifies Node.js application configuration.
  - `views/`: Stores application views.

- `docker-compose.yml`: Specifies Docker services and their interactions.
- `README.md`: The file you are currently reading.

> **Note**: The `node_modules` directory is intentionally not included in the repository. It is generated locally when you install project dependencies using `npm install`. This omission keeps the repository size smaller and avoids adding a large number of third-party library files to version control. The `package.json` file specifies the project's dependencies, giving you a general idea of what the `node_modules` directory will contain and where to find it.

## Docker Compose Configuration

The `docker-compose.yml` file defines two Docker services:

### 1. `app`

- Dockerizes the Node.js application.
- Exposes port 3000 for accessing the application.
- Links to the `mongo` service for database connectivity.
- Mounts the application code and node_modules for development.

### 2. `mongo`

- Utilizes the official MongoDB Docker image.
- Exposes port 27017 for MongoDB access.

## Getting Started

To set up and run the Dockerized Full-Stack Application:

1. Ensure Docker and Docker Compose are installed on your system.
2. Clone this repository to your local machine.
3. Navigate to the project directory.
    ```bash
    cd dockerized-fullstack-application
    ```
4. Build and start the application using Docker Compose.
    ```bash
    docker-compose up --build
    ```
5. Access the application in your web browser at `http://localhost:3000`.
6. To shut down the application and clean up Docker resources when you're done:

- Press `Ctrl+C` in the terminal where Docker Compose is running to stop the containers.
- To remove the stopped containers, networks, and volumes associated with this project, run:
    ```bash
    docker-compose down
    ```
- Additionally, you can remove any unused Docker resources (e.g., dangling images, containers, and networks) by running:
    ```bash
    docker system prune -a
    ```
- These commands will help you gracefully shut down the application and free up any unused Docker resources.

## Dependencies

The project relies on the following key dependencies:

- Express: Web framework for Node.js.
- Mongoose: MongoDB object modeling tool.
- EJS: Embedded JavaScript templates.
- Body Parser: Middleware for parsing HTTP request bodies.

---

Thank you!
