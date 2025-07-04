pipeline {
  agent {
    node {
      label 'test1'
    }

  }
  stages {
    stage('Git Clone') {
      steps {
        sh 'git clone https://github.com/VkyM/test.git'
      }
    }

    stage('build image') {
      steps {
        dir(path: 'test') {
          sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
        }

      }
    }

  }
  environment {
    IMAGE_NAME = 'nginxc'
    IMAGE_TAG = 'v1'
  }
}