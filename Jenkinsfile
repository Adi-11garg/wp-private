pipeline {

  agent any

  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init"
      }
    }
    stage('Terraform Plan') {
      withAWS(credentials: 'AWS-Credentials', region: 'ap-south-1') {
    // some block
}
      steps {
        // withAWS(region: 'ap-south-1', credentials: 'AWS-Credentials')
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
