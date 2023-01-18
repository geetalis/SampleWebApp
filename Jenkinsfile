pipeline{
	agent any
	tools{
		maven localMaven
	}
	
	stages{
		stage('Build'){
			steps{
				bat 'mvn clean package'
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
