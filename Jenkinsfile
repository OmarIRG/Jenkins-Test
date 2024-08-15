pipeline {
    agent any
    parameters {
        string(name: 'DOCKER_IMAGE_TAG', defaultValue: 'latest', description: 'Tag for the Docker image')
    }
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("my-app:${params.DOCKER_IMAGE_TAG}")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        docker.image("my-app:${params.DOCKER_IMAGE_TAG}").push()
                    }
                }
            }
        }
    }
}
