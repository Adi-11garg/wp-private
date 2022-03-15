pipeline {

  agent any

  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init"
      }
    }
    stage('s3-ls'){
      steps {
        withAWS(region: 'ap-south-1', credentials: 'AWS-Credentials')
        sh "aws s3 ls"
      }
    }
    stage('Terraform Plan') {
      steps {
        withAWS(region: 'ap-south-1', credentials: 'AWS-Credentials')
        sh "terraform plan"
      }
    }
    stage('Terraform Apply') {
      steps {
        input 'Apply Plan'
        sh "terraform apply --auto-approve"
      }
    }
    }
  }
