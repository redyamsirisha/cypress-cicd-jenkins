pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Cloning Git') {
      steps {
        sh 'pwd'
        dir ('cypress')
        sh 'pwd'
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
