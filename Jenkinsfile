pipeline {
  agent any
  stages {
    stage('Docker Image Build') {
      steps {
        script {
          'sh docker build -t srujanswaroop/events:calimg .'
        }

      }
    }

    stage('Docker push') {
      steps {
        script {
          withDockerRegistry([ credentialsId: "DockerHub", url: "" ])
          {
            sh 'docker push srujanswaroop/events:calimg'

          }
        }

      }
    }

  }
  environment {
    registry = 'srujanswaroop/events'
    registryCredential = 'dockerhub'
  }
}