pipeline{
	agent any
	tools{
		maven 'LocalMaven',
		docker 'Docker'
	}
	

	
	stages{
		stage('Initialize'){
			steps{
        			def dockerHome = tool 'LocalDocker'
        			def mavenHome  = tool 'LocalMaven'
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
