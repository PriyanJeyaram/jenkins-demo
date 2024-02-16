pipeline {
    agent {label "win-agent-1"}

    stages {
        stage('Build') {
            steps {
                echo 'Build'
                git 'https://github.com/PriyanJeyaram/jenkins-demo'
                bat 'mvn clean install -DskipTests'
            }
        }
        stage('Containerize') {
            steps {
                echo 'Building Success'
                echo 'Containerizing'
                bat 'docker build -t priyanj/jenkins-demo .'
            }
        }
        stage('Publish') {
            steps {
                echo 'Containerizing Success'
                echo 'Pushing to hub.docker.com'
                bat 'docker push priyanj/jenkins-demo'
            }
        }
    }
}
