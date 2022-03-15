pipeline {
  git branch: 'main', url: 'https://github.com/atishayjain31/wp-private.git'
  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init"
      }
    }
    stage('Terraform Plan') {
      steps {
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
