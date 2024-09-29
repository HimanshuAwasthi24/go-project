pipeline {
    agent { label "vinod" }

    environment {
        IMAGE_NAME = "go-app:latest"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: "https://github.com/HimanshuAwasthi24/go-project.git", branch: "main"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: "dockerhub",
                    passwordVariable: "dockerHubPass",
                    usernameVariable: "dockerHubUser"
                )]) {
                    sh """
                        docker login -u ${dockerHubUser} -p ${dockerHubPass}
                        docker tag ${IMAGE_NAME} ${dockerHubUser}/${IMAGE_NAME}
                        docker push ${dockerHubUser}/${IMAGE_NAME}
                    """
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                sh "docker-compose up -d"
            }
        }
    }

    post {
        always {
            sh "docker logout"
        }
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
