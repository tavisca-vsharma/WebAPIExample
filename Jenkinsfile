pipeline {
    agent any

    stages {

        stage('Building') {
            steps {
                echo 'building..'
				bat 'docker build -t jonty070/dockerfile:build-%BUILD_NUMBER% .'
            }
			}
		 stage('Docker push') {
            steps {
                bat 'docker login -u jonty070 -p Whitehouse@123'
				bat 'docker push jonty070/vweb:build-%BUILD_NUMBER%'
            }
        }
		stage('Docker run'){
			steps{
				bat 'docker run --rm -p 13290:5678 jonty070/vweb:build-%BUILD_NUMBER%'
			}
		}
    }
}
