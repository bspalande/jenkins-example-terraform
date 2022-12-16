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
        sh 'terraform apply main.tfplan -auto-approve -no-color -var "client_id=edef04e2-c2cb-4db9-b50c-245c86f851fb" -var "client_secret=GJp8Q~4ufHwvmKSNjyTi.wC4XUy7njnsbEZAbang" -var "subscription_id=0444f5bd-f158-45de-9a56-190ccc7ee8c3" -var "tenant_id=069ca8c2-34f8-4786-940a-96d33e8cf1f3"
'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
