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

    stage('Deploy app') {
      steps {
        sh '''step([$class: "RundeckNotifier",
          rundeckInstance: "Rundeck",
          shouldFailTheBuild: true,
          shouldWaitForRundeckJob: true,
          options: """
          BUILD_VERSION=$BUILD_NUMBER
          """,
          jobId: "52c6c24b-e155-43a9-913c-2cb7b6e51f91"])'''
      }
    }

  }
}