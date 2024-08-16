pipeline {
    agent any
    parameters {
        string(name: 'DOCKER_IMAGE_TAG', defaultValue: 'latest', description: 'Tag for the Docker image')
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh "docker build -t my-app:${DOCKER_IMAGE_TAG} ."
            }
        }
        stage('Push Docker Image') {
            steps {
                withDockerRegistry([url: 'https://registry.hub.docker.com', credentialsId: 'docker-hub-credentials']) {
                    sh "docker push my-app:${DOCKER_IMAGE_TAG}"
                }
            }
        }
    }
}
