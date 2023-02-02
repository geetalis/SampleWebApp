

pipeline{
	environment{
		def dockerHome = tool 'LocalDocker'
        	env.PATH = "${dockerHome}/bin:${env.PATH}"
	}
agent { dockerfile true }
	tools{
		maven "LocalMaven"
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
