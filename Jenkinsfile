

pipeline{

	agent any
	tools{
		maven 'LocalMaven'
		docker 'LocalDocker'
	}
	
	stages{
		stage('Build'){
			steps{
				sh 'mvn clean package'
			}
			post{
				success {
					echo 'Successfull in Building'
					archiveArtifacts artifacts: '**/*.war'
				}
			}
		}
		stage('Build Docker Image'){
			steps{
				sh "docker build . -t tomcatwebapp:${env.BUILD_ID}"
			}
		}
		
	}
}
