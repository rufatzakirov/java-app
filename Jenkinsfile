@Library('shared-library')
def gv
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
