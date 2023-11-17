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
                    git branch: 'main', url: 'https://github.com/SreejithAWS/JavaQR.git'
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
    stages {
        stage('Docker Image build') {
            steps {
                script {
                    sh ' docker build -t openjdk:11-jre-slim -f JavaQR_CI/src/Dockerfile . '

                }
            }
        }
    }
}
      
