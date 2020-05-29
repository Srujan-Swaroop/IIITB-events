pipeline {
  agent any
  stages {
    stage('Build ') {
      steps {
        sh 'npm install'
      }
    }

    stage('Docker images build') {
      steps {
        sh 'docker-compose build'
      }
    }

    stage('Docker push') {
      steps {
        script {
          withDockerRegistry([ credentialsId: "dockerhub", url: "" ])
          {
            sh 'docker push srujanswaroop/eventsdb:latest'
          }
        }

      }
    }

    stage('Rundeck') {
      steps {
        script {
          step([$class: "RundeckNotifier",
          rundeckInstance: "Rundeck",
          shouldFailTheBuild: true,
          shouldWaitForRundeckJob: true,
          options: """
          BUILD_VERSION=$BUILD_NUMBER
          """,
          jobId: "52559608-322c-4d4f-afed-f39ea981a781"])
        }

      }
    }

  }
}
