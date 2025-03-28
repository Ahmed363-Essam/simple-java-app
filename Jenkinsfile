pipeline {
    agent any 

    stages {
        stage('Git') { 
            steps {
                git branch: 'main', url: 'https://github.com/Ahmed363-Essam/simple-java-app'

                echo 'Git cOMPLTED....................'
            }
        }
        stage('MavenBuild') { 
            steps {
                 sh "mvn --version" 
            }
        }
        stage('Deploy') { 
            steps {
                echo 'Deploy Completed ..........................' 
            }
        }
    }
}