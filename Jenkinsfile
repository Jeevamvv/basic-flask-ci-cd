pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/jeevamvv/basic-flask-ci-cd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def app = docker.build("flask-ci-cd-image")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 5000:5000 flask-ci-cd-image'
            }
        }
    }
}

