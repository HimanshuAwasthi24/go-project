pipeline {
    agent {label "vinod"}

    stages {
        stage('git-clone') {
            steps {
                git url: "https://github.com/HimanshuAwasthi24/go-project.git", branch: "main"
            }
        }
        stage('Build-image') {
          steps {
            sh "docker rm -f \$(docker ps -aq) && docker rmi -f \$(docker images -aq) && docker build -t go-app:latest ."
            }
        }
         stage('Build-image') {
          steps {
            withCredentials([usernamePassword('credentialsId':"dockerhub",
            passwordVariable:"dockerHubPass",
            usernameVariable:"dockerHubUser")]){
            sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
            sh "docker tag go-app:latest ${env.dockerHubUser}/go-app:latest"
            }
            }
        }
        stage('deploy') {
          steps {
            sh "docker-compose up -d"
            }
        }
    }
}
