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
        sh 'terraform apply main.tfplan -auto-approve -no-color -var "client_id=edef04e2-c2cb-4db9-b50c-245c86f851fb"'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
