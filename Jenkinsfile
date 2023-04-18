pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('Display Variables') {
            steps {
                echo "AWS_ACCESS_KEY_ID: ${AWS_ACCESS_KEY_ID}"
                echo "AWS_SECRET_ACCESS_KEY: ${AWS_SECRET_ACCESS_KEY}"
            }
        }
    }
    stages {
        stage('Clone Git') {
            steps {
                git url: 'https://github.com/iraj-norouzi/Aws-sample-Project-by-Iraj.git', credentialsId: 'my-git-credentials'
            }
        }
        
}



    //     stage('Plan') {
    //         steps {
    //             sh 'pwd;cd terraform/ ; terraform init'
    //             sh "pwd;cd terraform/ ; terraform plan -out tfplan"
    //             sh 'pwd;cd terraform/ ; terraform show -no-color tfplan > tfplan.txt'
    //         }
    //     }
    //     stage('Approval') {
    //        when {
    //            not {
    //                equals expected: true, actual: params.autoApprove
    //            }
    //        }

    //        steps {
    //            script {
    //                 def plan = readFile 'terraform/tfplan.txt'
    //                 input message: "Do you want to apply the plan?",
    //                 parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
    //            }
    //        }
    //    }

    //     stage('Apply') {
    //         steps {
    //             sh "pwd;cd terraform/ ; terraform apply -input=false tfplan"

    //         }
        // }
    }

  }
