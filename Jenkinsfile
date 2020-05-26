pipeline {
  agent any
  stages {
    stage('Docker Image Build') {
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
    }

    stage('Docker push') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
      }

    }
    environment {
      registry = 'srujanswaroop/events'
      registryCredential = 'dockerhub'
    }
  }
