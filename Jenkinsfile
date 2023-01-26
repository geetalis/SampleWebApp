pipeline{
	agent any
	tools{
		maven 'LocalMaven'
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
		
	}
}
