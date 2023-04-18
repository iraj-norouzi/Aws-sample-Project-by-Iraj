pipeline {
    parameters {
    choice(name: 'ACTION', choices: ['Deploy', 'Destroy'], description: 'Choose whether to deploy or destroy the infrastructure')
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
                sh 'pwd ; terraform init'
                sh "pwd ; terraform plan -out tfplan"
                sh 'pwd ; terraform show -no-color tfplan > tfplan.txt'
            }
        }




        stage('Test') {
            steps {
                echo 'Test 2000'
            }
        }
    }
}