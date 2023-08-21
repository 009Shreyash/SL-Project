pipeline {
 environment {
 imagename = “009shreyash/jenkins-docker”
 credential = ‘009shreyash-dockerhub’
 dockerImage = ‘’
 }
 agent any
 stages {
 stage(‘Checkout’) {
 steps {
 git([url: ‘https://github.com/009Shreyash/SL-Project.git', branch: ‘main’])
 }
 }
 stage(‘Build’) {
 steps{
 script {
 dockerImage = docker.build imagename
 }
 }
 }
 stage(‘Test’) {
 steps{
 script {
 sh “docker run ${imagename}:latest”
 }
 }
 }
 stage(‘Deploy’) {
 steps{
 script {
 docker.withRegistry( ‘’, credential ) {
 dockerImage.push(“$BUILD_NUMBER”)
 dockerImage.push(‘latest’)
 }
 }
 }
 }
 }
}
