pipeline {
	agent {
        label 'docker-agent'
    }
	
	stages {
        stage('setup') {
            steps {
                sh 'sudo apt install -y git'
            }
        }

		stage('checkout') {
      steps {
        git(url: "https://github.com/amado-saladino/maven-pipeline.git", branch: 'cloud-docker-agent')
      }
    }
	
	stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit "target/surefire-reports/*.xml"
                }
            }
        }
  }
}