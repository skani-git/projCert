#!/usr/bin/env groovy

node{
    stage('Git Checkout'){
        git 'https://github.com/skani-git/projCert.git'
    }
    stage('Build'){
        'sh docker build . -t devops-webapp'
    }
}
