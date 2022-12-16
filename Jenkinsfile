pipeline {
   agent any
	tools {
		  terraform 'terraform'
	}
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform') {
      steps {
      sh 'terraform init'
        sh 'terraform plan -out main.tfplan'
        sh 'terraform apply main.tfplan -auto-approve -no-color -var "client_secret=GJp8Q~4ufHwvmKSNjyTi.wC4XUy7njnsbEZAbang"'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
