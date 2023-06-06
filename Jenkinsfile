pipeline {
   agent any
   parameters{
        choice(name: 'Browser', choices: ['chrome','edge','firefox'], description: "Choice the browser where you want to execute your script")
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
