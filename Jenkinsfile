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
            when {
                branch 'master'
            }
            steps {
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

        stage('Clean') {
            when {
                branch 'master'
            }
            steps {
                sh 'make clean'
            }
        }
    }
}
