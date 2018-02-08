#!groovy

pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'echo skip'
            }
        }

        stage('Build') {
            steps {
                sh 'make clean'
                sh 'make build'
            }
        }

        stage('Deploy') {
            when {
                branch 'master'
            }
            steps {
                sh 'make deploy'
            }
        }
    }
}
