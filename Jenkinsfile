pipeline {
   agent any
   parameters{
        string(name: 'spec', defaultValue: "cypress/e2e/**", description: "Enter the script path that you want to execute")
        choice(name: 'Browser', choices: ['chrome','edge','firefox'], description: "Choice the browser where you want to execute your script")
   }
   options{
        ansiColor('xterm')
   }
   stages {
        stage('Buildind') {
           steps {
               echo 'Building the app'
           }
        }
        stage('e2e Tests') {
           steps {
               sh "docker build -t cypress-test ."
               sh "docker-compose run e2e-chrome"
           }
        }
       stage('Deploying') {
           steps {
               echo "Deploy the app"
           }
       }
       post{
            always{
                publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: true, reportDir:'cypress/report', reportFiles:'index.html', reportName:'report''HTML Report', reportTiltles:])
            }
       }
   }
}
