pipeline {
	agent {
        dockerfile {
            args "-u root -v maven-repo:/root/.m2"
        }
    }
	
	stages {
		stage('checkout') {
      steps {
        git(url: "https://github.com/amado-saladino/maven-pipeline.git")
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
