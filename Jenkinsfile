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
        stage('Build') {
            steps {
                sh 'gradle bootJar'
                sh 'cd /build/libs/spring-ci-cd-0.0.1-SNAPSHOT.jar'
            }
        }
    }
}
