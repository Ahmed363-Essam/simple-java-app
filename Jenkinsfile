pipeline {
    agent any 

    environment {
        MAVEN_VERSION = "3.9.6" // Change this to the required version
        MAVEN_HOME = "/opt/maven"
        PATH = "${MAVEN_HOME}/bin:${PATH}"
    }

    stages {
        stage('Install Maven') {
            steps {
                sh '''
                # Define variables
                MAVEN_VERSION="3.9.6"
                MAVEN_HOME="/opt/maven"
                MAVEN_URL="https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz"

                # Create directory and download Maven
                mkdir -p ${MAVEN_HOME}
                wget -q ${MAVEN_URL} -O /tmp/maven.tar.gz
                tar -xzf /tmp/maven.tar.gz --strip-components=1 -C ${MAVEN_HOME}
                rm /tmp/maven.tar.gz

                # Verify installation
                ${MAVEN_HOME}/bin/mvn --version
                '''
            }
        }

        stage('Git') { 
            steps {
                git branch: 'main', url: 'https://github.com/Ahmed363-Essam/simple-java-app'
                echo 'Git COMPLETED....................'
            }
        }

        stage('MavenBuild') { 
            steps {
                sh "${MAVEN_HOME}/bin/mvn clean package" // Use the installed Maven
            }
        }

        stage('Deploy') { 
            steps {
                echo 'Deploy Completed ..........................' 
            }
        }
    }
}
