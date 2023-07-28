pipeline {
    agent any
    environment {
        PROJECT_NAME = "cloudworkshop"
    }
    stages{
        stage ("Docker Build"){
            steps {
                sh "docker build -t ${PROJECT_NAME} ."
            }
        }
        stage ("Docker Run") {
            steps {
                sh "(docker ps -a | grep ${PROJECT_NAME}) && (docker stop ${PROJECT_NAME} && docker rm ${PROJECT_NAME})"
                SH "docker run -d -p 3000:3000 --name ${PROJECT_NAME} ${PROJECT_NAME}:latest"
            }
        }
        stage ("Test") {
            steps{
                sh 'curl -o /dev/null -s -w "%{http_code}\n" http://localhost:3000/'
            }
        }
    }
}