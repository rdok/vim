pipeline { 
   agent { label 'linux' }
   triggers { cron('H H(18-19) * * *') }
   options { buildDiscarder( logRotator( numToKeepStr: '5' ) ) }
   environment {
      USERNAME = credentials('hub-docker-username')
      TOKEN = credentials('hub-docker-access-token')
   }
   stages {
      stage('Build') {
         steps { sh 'docker image build . --tag rdok/vim:latest' } 
      }
      stage('Publish') {
         steps { 
            sh "echo ${TOKEN} | docker login -u ${USERNAME} --password-stdin"
            sh 'docker image push rdok/vim:latest'
            sh 'docker logout'
         } 
      }
   }
   post {
      failure {
         slackSend color: '#FF0000',
         message: "@here Failed: <${env.BUILD_URL}console | ${env.JOB_NAME}#${env.BUILD_NUMBER}>"
      }
      success {
         slackSend message: "Stable: <${env.BUILD_URL}console | ${env.JOB_NAME}#${env.BUILD_NUMBER}>"
      }
   }
}
