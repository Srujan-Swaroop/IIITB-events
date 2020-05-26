pipeline {
  agent any
  stages {
    stage('Docker Image Build') {
      steps {
        sh 'dockerImage = docker.build registry + ":latest"'
      }
    }

    stage('Docker push') {
      steps {
        sh '''docker.withRegistry( \'\', registryCredential ) {
            dockerImage.push()'''
        }
      }

    }
    environment {
      registry = 'srujanswaroop/events'
      registryCredential = 'dockerhub'
    }
  }