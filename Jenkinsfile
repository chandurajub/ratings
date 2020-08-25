pipeline {
  agent {
    label 'SLAVE'
  }

  environment{
    MAJOR_VERSION="1.0"
    NEXUS=credentials('Nexus')
  }
  stages{
    stage('Create an archive file'){
      steps{
        sh '''
        cd html
        tar -cvf ratings-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz `ls`
        '''
      }
    }
    stage('Upload to Nexus'){
      steps{
        sh '''
     curl -f -v -u $NEXUS --upload-file html/ratings-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz https://nexus.devops46.online/repository/ratings-service/ratings-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz
      '''
      }
    }
  }
}