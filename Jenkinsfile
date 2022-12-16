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
        //sh 'terraform init  -no-color'
        //sh 'terraform plan -out main.tfplan  -no-color'
        //sh 'terraform apply main.tfplan -no-color'
        sh 'terraform plan -destroy'
        sh 'terraform apply -destroy -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
