pipeline {
  agent any
    
  tools {nodejs "node"}
    
    stage('Cloning Git') {
      steps {
        sh 'pwd'
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"        
        dir ('/var/jenkins_home/workspace/cypress_cicd/cypress'){
             sh 'pwd'
             sh 'docker run -v $PWD:/e2e -w /e2e cypress/included:3.4.0'
             sh 'npm install'
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
