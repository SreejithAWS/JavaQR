pipeline {
    agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }
    stages{
        stage('clean workspace') {
            steps {
                script {
                    cleanWs()
                }
            }
        }
        stage('checkout scm') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/SreejithAWS/javaqr.git'
                }
            }
        }
        stage('maven Test') {
            steps {
                script {
                    sh 'mvn test'
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    sh 'mvn clean package'
                }
            }
        }
        stage('Docker Image build') {
            steps {
                script {
                    sh ' docker build -t sreejitheyne/openjdk:17.0.2 -f Dockerfile . '

                }
            }
        }
    }
}
      
