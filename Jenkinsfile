pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Hello World'
                git branch: 'main', url: 'https://github.com/iraj-norouzi/Aws-sample-Project-by-Iraj.git'
                echo 'Hello World'
            }
        }
        stage('Test') {
            steps {
                echo 'Test'
            }
        }
    }
}