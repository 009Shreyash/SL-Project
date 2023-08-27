pipeline{
    
    agent any
    
    environment{
     DOCKERHUB_CREDENTIAL = credentials('dockerhub-credantial')    
    }
    
    tools{
        maven "maven"
    }
    
    stages{
        stage("Git Clone Project"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/009Shreyash/SL-Project.git']])   
            }
        }
        stage("Build Project"){
            steps{
                sh 'mvn clean install'
            }
        }
        stage("Test Project"){
            steps{
                sh 'mvn test'
            }
        }
        stage("Build Docker Image"){
            steps{
                script{
                    sh 'docker build -t 009shreyash/devops-automation-image .'
                }    
            }   
        }
        stage("Docker hub login"){
            steps{
                script{
                     sh 'echo $DOCKERHUB_CREDENTIAL_PSW | docker login -u $DOCKERHUB_CREDENTIAL_USR --password-stdin'         
                }    
            }   
        }
        stage("Push Docker Image to hub"){
            steps{
                script{
                     sh 'docker push 009shreyash/devops-automation-image'         
                }    
            }   
        }
        
    }
    
    
}
