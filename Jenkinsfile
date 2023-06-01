pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Cloning Git') {
      steps {
        sh 'pwd'
        dir ('/var/jenkins_home/workspace/cypress_cicd/cypress'){
             sh 'pwd'
             sh 'npm install'
             sh 'apt install xvfb'
             sh 'npm run testsmokechrome'
        }
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
