pipeline {
    agent any
    tools {
        gradle "8.1"
    }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                withGradle(){
                    sh './gradlew --version'
                    sh './gradlew assemble'
                }
            }
        }
         stage('Test') {
            steps {
                sh 'gradle test'
            }
        }
        stage('Realise') {
            steps {
                sh 'gradle bootJar'
                sh 'nohup java -jar build/libs/spring-ci-cd-0.0.1-SNAPSHOT.jar &'
            }
        }
    }
}
