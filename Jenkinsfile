pipeline {
    agent any
    tools {
        gradle "8.1"
        docker "docker"
    }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker -v'
                sh 'gradle --version'
                sh 'gradle assemble'
            }
        }
        stage('Test') {
            steps {
                sh 'gradle test'
            }
        }
        stage('Realise') {
            when {
                branch 'dev'
            }
            steps {
                sh 'gradle bootJar'
                sh 'java -jar build/libs/spring-ci-cd-0.0.1-SNAPSHOT.jar &'
            }
        }
    }
}
