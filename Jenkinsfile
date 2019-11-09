#!/usr/bin/env groovy

node{
    stage('Git Checkout'){
        git 'https://github.com/skani-git/projCert.git'
    }
    stage('Build'){
        steps{
            'sh docker build . -t devops-webapp'
        }
    }
    stage('Deploy'){
        steps{
        'sh docker run -itd -p 8082:80 -t devops-webapp'
        }
    }
    stage('Test'){
        steps{
        'sh java -jar DevopsTest.jar'
        }
    }
}
