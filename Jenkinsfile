pipeline {
 environment {
 imagename = “009shreyash/jenkinsdockerpipeline”
 credential = ‘009shreyashDockerhub’
 dockerImage = ‘’
 }
 agent any
 stages {
 stage(‘Checkout’) {
 steps {
 git 'url: ‘https://github.com/009Shreyash/SL-Project.git' }
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
    sh "docker run -d --restart=always -p 8080:80 ${imagename}:version"
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
