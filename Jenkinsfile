pipeline {

  agent any

  environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        TF_IN_AUTOMATION      = '1'
    }


  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init"
      }
    }
    // stage('s3-ls'){
    //   steps {
    //     withAWS(region: 'ap-south-1', credentials: 'e43f9934-045b-408e-98b2-d23a633488a6')
    //     sh "aws s3 ls"
    //   }
    // }
    stage('Terraform Plan') {
      steps {
        // withAWS(region: 'ap-south-1', credentials: 'AWS-Credentials')
        sh "terraform plan"
      }
    }
    // stage('Terraform Apply') {
    //   steps {
    //     input 'Apply Plan'
    //     sh "terraform apply --auto-approve"
    //   }
    // }
    }
}
