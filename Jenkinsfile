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
                    docker.build("flask-ci-cd-image")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 5000:5000 flask-ci-cd-image'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}

