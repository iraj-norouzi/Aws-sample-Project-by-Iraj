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

        stage('Install Terraform') {
        steps {
            sh 'curl -O https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_linux_amd64.zip'
            sh 'unzip terraform_0.15.5_linux_amd64.zip'
            sh 'sudo mv terraform /usr/local/bin/'
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
                echo 'Test 000'
            }
        }
    }
}