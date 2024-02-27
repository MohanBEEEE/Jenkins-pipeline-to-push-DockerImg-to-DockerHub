java {
	def app
	stages{
		stage('Clone repository'){
			checkout scm
		}
		
		stage('Build Image'){
		app = docker.build("mohanvenkatesh1998/java-for-devops")
		}

		stage('Test Image'){
			app.inside {
				sh 'echo "Test Passed"'
			}
		}

		stage('Push Image'){
			docker.withRegistry('https://registry.hub.docker.com', 'git'){
				app.push("${env.BUILD_NUMBER}") 
				app.push("1.0.2")
			}
		}
	
	
	}
}