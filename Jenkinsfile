pipeline {
   agent any
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
        stage ('Report') {
            steps {
                  publishHTML(target: [allowMissing: false,
                  alwaysLinkToLastBuild: false,
                  keepAll: true,
                  reportDir: '/var/jenkins_home/workspace/cypess',
                  reportFiles: 'report.html',
                  reportName: 'ChromeReports',
                  reportTitles: 'jenkins-Chrome$BUILD_NUMBER'
                  ])
            }
        }
        stage('export') {
           steps {
               sh "cp /var/jenkins_home/jobs/cypress_cicd/builds/23/htmlreports/ChromeReports /var/jenkins_home/workspace/"
           }
        }      
   }
}
