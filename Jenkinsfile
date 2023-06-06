pipeline {
   agent any
   }
   options{
        ansiColor('xterm')
   }
   stages {
        stage('Build image') {
           steps {
               sh "docker build -t cypress-test ."
           }
        }
        stage('testing in chrome') {
           steps {
               sh "docker-compose run e2e-chrome"
           }
        }
       stage('Deploying') {
           steps {
               echo "Deploy the app"
           }
       }
   }
}
