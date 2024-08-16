pipeline {
    agent any
    parameters {
        string(name: 'DOCKER_IMAGE_TAG', defaultValue: 'latest', description: 'Tag for the Docker image')
    }
    stages {
        stage('Build Docker Image') {
            steps {
                // Build the Docker image and tag it appropriately
                sh "docker build -t omarirg/my-repo:${DOCKER_IMAGE_TAG} ."
            }
        }
        stage('Push Docker Image') {
            steps {
                // Use Docker Hub credentials to login and push the image
                withDockerRegistry([url: '', credentialsId: 'docker-hub-credentials']) {
                    sh "docker push omarirg/my-repo:${DOCKER_IMAGE_TAG}"
                }
            }
        }
    }
}
