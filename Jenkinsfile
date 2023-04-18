pipeline {
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    agent any
    stages {
        stage('Clone Git') {
            steps {
                git url: 'https://github.com/iraj-norouzi/Aws-sample-Project-by-Iraj.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'echo "Terraform Init" '
                // sh 'cd terraform && terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'echo "Terraform Plan" '
                // sh 'cd terraform && terraform plan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'echo "Terraform Apply" '
                // sh 'cd terraform && terraform apply -auto-approve'
            }
        }
    }
}
