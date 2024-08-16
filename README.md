# Jenkins-Test

# Jenkins Pipeline for Dockerized Nginx Web Server

This project demonstrates the use of Jenkins to automate the process of building and deploying a Dockerized Nginx web server. The pipeline is designed to be triggered automatically whenever changes are made to the source code (such as an `index.html` file), ensuring that the latest version is always deployed.

## Project Overview

The project consists of:

1. A **Dockerfile** that defines the Nginx web server configuration and the static content it will serve.
2. A **Jenkins Pipeline** (`Jenkinsfile`) that automates the following steps:
   - Building the Docker image.
   - Pushing the Docker image to Docker Hub.
   - Deploying the Docker container on a server.

## Features

- **Automated Builds**: The Jenkins pipeline automatically triggers a build whenever there are changes in the `Test` branch of the repository.
- **Parameterized Builds**: The pipeline includes a parameter for the Docker image tag, allowing you to specify different versions of the Docker image.
- **Continuous Deployment**: Once the Docker image is built, it is pushed to Docker Hub and then deployed as a running container.

## Jenkins Pipeline Details

The Jenkins pipeline consists of the following stages:

1. **Build Docker Image**:
   - Uses the `Dockerfile` in the repository to build a Docker image.
   - Tags the image with the specified Docker image tag.

2. **Push Docker Image**:
   - Logs in to Docker Hub using stored credentials.
   - Pushes the built Docker image to your Docker Hub repository.

3. **Run Docker Container**:
   - Stops and removes any existing container with the same name.
   - Runs the Docker container using the newly built image, mapping port 8080 on the host to port 80 in the container.

## How to Set Up

### Prerequisites

Before setting up the project, ensure you have the following:

- **Jenkins**: Installed and running on your server.
- **Docker**: Installed on both your Jenkins server and any server where you plan to deploy the container.
- **Git**: To clone the repository and manage code versions.

### Repository Structure

- **Dockerfile**: Defines the Docker image.
- **Jenkinsfile**: Contains the Jenkins pipeline script.
- **index.html**: The static HTML file served by Nginx.
