pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/vinothmrgn/b4z-test-app', branch: 'dev')
      }
    }

    stage('Log') {
      parallel {
        stage('Log') {
          steps {
            sh 'ls -la'
          }
        }

        stage('b4z-test-app-front') {
          steps {
            sh 'npm i'
          }
        }

      }
    }

  }
}