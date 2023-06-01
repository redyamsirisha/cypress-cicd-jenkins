pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Cloning Git') {
      steps {
        dir('/var/jenkins_home/workspace/cypress_cicd/cypress/') 
      }
    }
        
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
     
    stage('Test') {
      steps {
         sh 'npm run testsmokechrome'
      }
    }      
  }
}
