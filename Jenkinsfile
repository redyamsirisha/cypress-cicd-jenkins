def COLOR_MAP = [
    'SUCCESS': 'good', 
    'FAILURE': 'danger',
]
pipeline {
	     agent any

	       stages {
	       
	        stage('Change dir') {
	            steps {
	                   sh 'cd cypress/'
		      }
		   }
	            
	        stage('Install dependencies') {
	            steps {
	                  echo '######## Install dependencies ########'
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
