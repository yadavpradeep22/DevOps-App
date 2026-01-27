pipeline {
    agent any
    stages {
        stage('Clone Code') {
            steps {
                echo 'GitHub se code aa gaya!'
            }
        }
        stage('Deploy to Docker') {
            steps {
                // Purana container delete karo agar koi hai
                sh 'docker rm -f my-web-app || true'
                // Naya container chalao hamari HTML file ke saath
                sh 'docker run -d --name my-web-app -p 8081:80 -v $(pwd):/usr/share/nginx/html nginx'
                echo 'Website 8081 par update ho gayi!'
            }
        }
    }
}
