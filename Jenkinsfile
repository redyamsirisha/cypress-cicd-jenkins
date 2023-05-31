pipeline {
   agent any

   tools {nodejs "Node14"}

   environment {
       CHROME_BIN = '/bin/google-chrome'
      
   }

   stages {
       stage('Dependencies') {
           steps {
               sh 'cd cypress/'
           }
       }
       stage('Dependencies') {
           steps {
               sh 'npm install'
           }
       }       
       stage('e2e Tests') {
         Parallel{
             stage('Test 1') {
                  steps {
                sh 'npm run testsmokechrome'
                  }
               }
             
             stage('Test 2') {
                  steps {
                sh 'npm run testregedge'
                  }
               }

       }
       stage('Deploy') {
           steps {
               echo 'Deploying....'
           }
       }
   }
}