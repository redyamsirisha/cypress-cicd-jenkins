def COLOR_MAP = [
    'SUCCESS': 'good', 
    'FAILURE': 'danger',
]
pipeline {
	     agent any

	       stages {
	       
	        stage('Change dir') {
	            steps {
	                   sh 'wget nodejs.org/dist/v0.10.36/node-v0.10.36-linux-x64.tar.gz'
			   sh 'sudo tar -C /usr/local --strip-components 1 -xzf node-v0.10.36-linux-x64.tar.gz'
		      }
		   }
	            
	        stage('Install dependencies') {
	            steps {
	                  echo '######## Install dependencies ########'
			  sh 'cd cypress'
	                  sh 'npm install'
	            }
	        }
	            
	        stage('client-e2e-testing') {
	            steps {
	                   echo '######## Running cypress tests ########'
	                   bat "npm run testsmokechrome"   // run the relevant script in package json
	          }
		
                 post {
   		 always {
      			publishHTML (target : [
			    allowMissing: true,
			    alwaysLinkToLastBuild: false,
			    keepAll: false,
			    reportDir: 'cypress',
			    reportFiles: 'mochawesome.html',
			    reportName: 'HTML Report',
			    reportTitles: 'HTML Report']) 
   			}
  		  }  
	    }
      }
}
