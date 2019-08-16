pipeline {
    agent any

    stages {
        stage('Restore') {
            steps {
                echo 'Restoring..'
				bat 'dotnet restore WebAPIExample.sln'
            }
        }
        stage('Building') {
            steps {
                echo 'building..'
				bat 'dotnet build WebAPIExample.sln -p:Configuration=release -v:q'
            }
        }
        stage('Publish') {
            steps {
                echo 'Publish....'
				bat 'dotnet publish WebAPIExample.sln'
            }
        }
		 stage('Deploy') {
            steps {
                echo 'Deploying...'
				bat 'dotnet WebAPIExample/bin/Release/netcoreapp2.1/WebAPIExample.dll'
            }
        }
    }
}