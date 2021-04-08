pipeline {
	agent {
        label 'docker-agent'
    }
	
	stages {
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