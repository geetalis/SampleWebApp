

pipeline{
	environment{
		def dockerHome = tool('LocalDocker')
		def mavenHome  = tool('LocalMaven')
	}
	agent any
	
	stages{
		stage('Initialize'){
			steps{
        			env.PATH = "${dockerHome}/bin:${mavenHome}/bin:${env.PATH}"
			}
    		}

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
