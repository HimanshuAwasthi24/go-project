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
        stage('deploy') {
          steps {
            sh "docker-compose up -d"
            }
        }
    }
}
