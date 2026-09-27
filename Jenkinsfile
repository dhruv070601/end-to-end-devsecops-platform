pipeline {
  agent any
  environment { APP_NAME='devsecops-demo'; IMAGE="${APP_NAME}:${BUILD_NUMBER}"; SONARQUBE_SERVER='sonarqube' }
  stages {
    stage('Checkout'){steps{checkout scm}}
    stage('Test'){steps{sh 'node --version && node --test app/app.test.js'}}
    stage('SonarQube'){steps{withSonarQubeEnv(SONARQUBE_SERVER){sh 'echo Running SonarQube analysis'}}}
    stage('Quality Gate'){steps{timeout(time:10,unit:'MINUTES'){waitForQualityGate abortPipeline:true}}}
    stage('Build Image'){steps{sh 'docker build -t $IMAGE -f app/Dockerfile app'}}
    stage('Trivy Scan'){steps{sh 'trivy image --exit-code 1 --severity HIGH,CRITICAL $IMAGE'}}
    stage('Publish'){steps{sh 'echo Publish versioned artifact to Nexus using configured credentials'}}
    stage('Deploy DEV'){steps{sh './scripts/deploy.sh dev $IMAGE'}}
    stage('Smoke Test'){steps{sh './scripts/health_check.sh dev'}}
    stage('UAT Approval'){steps{input message:'Approve UAT to PROD promotion?'}}
    stage('Deploy PROD'){steps{sh './scripts/deploy.sh prod $IMAGE'}}
  }
  post { failure { sh './scripts/rollback.sh || true' } }
}
