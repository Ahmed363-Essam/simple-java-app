def gv

pipeline {
    agent any
    stages {
        stage("init") {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/Ahmed363-Essam/simple-java-app'
                }
            }
        }
        stage("build jar") {
            steps {
                script {
                    echo "building jar1"
                    //gv.buildJar()
                }
            }
        }
        stage("build image") {
            steps {
                script {
                    echo "building image"
                    //gv.buildImage()
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    echo "deploying"
                    //gv.deployApp()
                }
            }
        }
    }   
}
