pipeline {
    agent any

    tools {
        maven 'maven'
    }

    stages {
        stage('Git') { 
            steps {
                git branch: 'main', url: 'https://github.com/Ahmed363-Essam/simple-java-app'
                echo 'Git Clone COMPLETED'
            }
        }

        stage('Maven Build') { 
            steps {
                sh "mvn --version"
            }
        }

        stage('Deploy') { 
            steps {
                echo 'Deploy Completed'
            }
        }
    }
}