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
                    sh cleanWs()
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
    }
}