pipeline{
    environment {
        DOCKERHUB_CREDENTIALS = credentials('DockerHubCredentials')
    }
    agent any
    tools {
        maven 'Maven_Home'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/MohanBEEEE/Jenkins-pipeline-to-push-DockerImg-to-DockerHub.git']])
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    sh 'docker build -t mohanvenkatesh1998/java-for-devops-jenkins .'
                }
            }
        }
        stage('Push to DockerHub'){
            steps{
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'Dockerhubmailid'){
                        echo 'started pushing to DH'
                        docker.image("mohanvenkatesh1998/java-for-devops-jenkins").push()
                        //docker.image("mohanvenkatesh1998/java-for-devops-jenkins:1.0.2").push("latest")
                        echo 'started pushing pushed'
                    }
                }
            }
        }
    }
}