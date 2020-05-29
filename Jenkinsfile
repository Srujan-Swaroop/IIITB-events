pipeline {
  agent any
  stages {
    stage('Build ') {
      steps {
        script {
          npm install
        }

      }
    }

    stage('Docker build') {
      steps {
        script {
          sh 'docker-compose build'
        }

      }
    }

    stage('Docker push') {
      steps {
        sh '''withDockerRegistry([ credentialsId: "dockerhub", url: "" ])
          {
            sh \'docker push srujanswaroop/eventsdb:latest\'
            sh \'docker push srujanswaroop/eventsweb:latest\'

          }'''
      }
    }

  }
}