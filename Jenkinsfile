pipeline{
	agent any
	tools{
		maven 'localMaven'
	}
	
	stages{
		stage('Build'){
			steps{
				bat 'mvn clean package'
			}
			post{
				success {
					echo 'Successfull in Building'
					bat "docker build . -t tomcatwebapp:${env.BUILD_ID}"
					archiveArtifacts artifacts: '**/*.war'
				}
			}
		}
		
	}
}
