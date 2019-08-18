pipeline {
    agent any

    stages {

        }
        stage('Building') {
            steps {
                echo 'building..'
				bat 'docker build -t jonty070/dockerfile:build-%BUILD_NUMBER% vweb/'
            }
        }
		 stage('Docker push') {
            steps {
                bat 'docker login -u jonty070 -p DockerPassword#3'
				bat 'docker push jonty070/Dockerfile:build-%BUILD_NUMBER%'
            }
        }
		stage('Docker run'){
			steps{
				bat 'docker run --rm -p 13290:5678 jonty070/Dockerfile:build-%BUILD_NUMBER%'
			}
		}
    }
}