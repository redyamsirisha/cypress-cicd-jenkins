def COLOR_MAP = [
    'SUCCESS': 'good', 
    'FAILURE': 'danger',
]
pipeline {
	     agent any

	       stages {
	       
	        stage('Check versions') {
	            steps {
	                   echo '######## Check versions ########'
			   bat "node --version"
	                   bat "git version"

		      }
		   }
	            
	        stage('Install dependencies') {
	            steps {
	                  echo '######## Install dependencies ########'
	                  bat "npm install"
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
