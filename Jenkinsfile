pipeline {
    agent any
    stages {
        stage('Build Image') {
            steps {
                // Apni custom image banao
                sh 'docker build -t bhai-ki-app:v1 .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker rm -f my-web-app || true'
                // Apni banayi hui image "bhai-ki-app:v1" chalao
                sh 'docker run -d --name my-web-app -p 8081:80 bhai-ki-app:v1'
            }
        }
    }
}
