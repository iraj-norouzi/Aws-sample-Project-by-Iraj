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
                echo 'Hello World2'
            }
        }

        stage('Plan') {
            steps {
                sh 'whoami'
                sh 'pwd'
                // sh 'which terraform'
                sh 'cd terraform;/var/jenkins_home/workspace/AWS-Test/terraform init'
                // sh "pwd ; terraform plan -out tfplan"
                // sh 'pwd ; terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Test') {
            steps {
                echo 'Test 000'
            }}
        }
    }