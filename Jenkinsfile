pipeline {
	agent any
	
	stages {
		stage('checkout') {
      steps {
        git(url: "https://github.com/amado-saladino/maven-pipeline.git", branch: 'docker-build')
      }
    }
	
	stage('build image') {
        steps {
            sh 'docker build -t test .'
        }
    }
    
    stage('run test container') {
        steps {
            sh "docker run --rm -v ${env.WORKSPACE}:/app -v maven-repo:/root/.m2 test"
        }
        post {
                always {
					junit '**/target/surefire-reports/TEST-*.xml'
                }
            }
    }

  }
}