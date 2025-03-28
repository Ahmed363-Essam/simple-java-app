pipeline {
    agent any 

    environment{
        PATH="/otp/maven3/bin:$PATH"
    }

    stages {
        stage('Git') { 
            steps {
                git branch: 'main', url: 'https://github.com/Ahmed363-Essam/simple-java-app'

                echo 'Git cOMPLTED....................'
            }
        }
        stage('Maven Build') { 
            steps {
                 sh "mvn clean package" 
            }
        }
        stage('Deploy') { 
            steps {
                echo 'Deploy Completed ..........................' 
            }
        }
    }
}