pipeline {
  agent any
  stages {
    stage('Build db&app') {
      steps {
        script {
          sh 'docker-compose build'
        }

      }
    }

    stage('Docker push') {
      steps {
        script {
          withDockerRegistry([ credentialsId: "dockerhub", url: "" ])
          {
            sh 'docker push srujanswaroop/eventsdb:latest'
            sh 'docker push srujanswaroop/eventsweb:latest'

          }
        }

      }
    }

  }
}