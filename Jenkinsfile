pipeline {
    agent any

    tools {
        maven 'maven 3.9.9'
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
                sh "mvn -B -DskipTests clean package"
            }
        }

        stage('Deploy') { 
            steps {
                echo 'Deploy Completed'
            }
        }
    }
}