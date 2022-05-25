#!/usr/bin/env groovy
@Library('shared-library')_
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                script {
                    buildDockerImage()
                }
            }
        }
    }
}
