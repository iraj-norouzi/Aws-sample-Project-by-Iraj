pipeline {
    parameters {
    choice(name: 'ACTION', choices: ['Deploy1', 'Destroy1'], description: 'Choose whether to deploy or destroy the infrastructure')
}

    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Hello World1'
                git branch: 'main', url: 'https://github.com/iraj-norouzi/Aws-sample-Project-by-Iraj.git'
                echo 'Hello World1'
            }
        }

        stage('Plan') {
            steps {
                sh 'pwd;cd terraform/ ; terraform init'
                sh "pwd;cd terraform/ ; terraform plan -out tfplan"
                sh 'pwd;cd terraform/ ; terraform show -no-color tfplan > tfplan.txt'
            }
        }




        stage('Test') {
            steps {
                echo 'Test 2000'
            }
        }
    }
}