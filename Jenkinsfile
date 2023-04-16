pipeline {
    agent any
    tools {
        gradle "gradle 8.1"
    }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle --version'
                sh 'gradle assemble'
            }
        }
         stage('Test') {
            steps {
                sh 'gradle test'
            }
        }
        stage('Test') {
            steps {
                sh 'gradle bootJar'
                sh 'cd /build/libs/spring-ci-cd-0.0.1-SNAPSHOT.jar'
            }
        }
       /* stage('Build Docker Image') {
            steps {
                sh 'docker --version'
                sh 'docker ps'
                sh 'mkdir /certs/client/ca.pem -p'
                sh 'gradle docker'
            }
        }
        stage('Run Docker Image') {
            steps {
                sh 'gradle dockerRun'
            }
        }*/
    }
}
