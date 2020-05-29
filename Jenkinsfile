pipeline {
  agent any
  stages {
    stage('Docker Image Build') {
      steps {
        script {
          sh 'docker build -t srujanswaroop/events:calimg .'
        }

      }
    }

    stage('Docker push') {
      steps {
        script {
          withDockerRegistry([ credentialsId: "dockerhub", url: "" ])
          {
            sh 'docker push srujanswaroop/events:calimg'

          }
        }

      }
    }

    stage('Test') {
      steps {        
        sh 'selenium-side-runner --output-directory=./testing/results --output-format=junit ./testing/IIITB-Event-Calendar.side'
        
      }
    }

  }
}