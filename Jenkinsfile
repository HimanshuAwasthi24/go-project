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
            sh "docker build -t go-app:latest ."
            }
        }
        stage('deploy') {
          steps {
            sh "docker run -dp 8080:8080 go-app:latest"
            }
        }
    }
}
