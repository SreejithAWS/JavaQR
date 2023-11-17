pipeline {
    agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }
    stages{
        stages('clean workspace') {
            steps {
                script {
                    sh cleanWs()
                }
            }
        }
        stages('checkout scm') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/SreejithAWS/JavaQR.git'
                }
            }
        }
        stages('maven Test') {
            steps {
                script {
                    sh 'mvn test'
                }
            }
        }
        stages('Build') {
            steps {
                script {
                    sh 'mvn clean package'
                }
            }
        }
    }
}