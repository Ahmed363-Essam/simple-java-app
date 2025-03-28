pipeline {
    agent any 

    environment {
        MAVEN_VERSION = "3.9.6" // Change this to the required version
        MAVEN_HOME = "/opt/maven"
        PATH = "${MAVEN_HOME}/bin:${PATH}"
    }

    stages {

        stage('Git') { 
            steps {
                git branch: 'main', url: 'https://github.com/Ahmed363-Essam/simple-java-app'
                echo 'Git COMPLETED....................'
            }
        }

        stage('MavenBuild') { 
            steps {
                 sh 'mvn -B -DskipTests clean package'
            }
        }

        stage('Deploy') { 
            steps {
                echo 'Deploy Completed ..........................' 
            }
        }
    }
}
