pipeline{
  agent any
  stages{
  	stage('Compile') {
  		steps {
  			sh 'sbt clean compile'
  		}
  	}
  	stage('Test') {
  		steps {
  			sh 'sbt test'
  		}
  	}
  	stage('Build') {
  		steps {
  			sh 'sbt assembly'
  		}
  	}
  	stage('Archiving') {
  		steps {
  			dir('target/scala-2.12') {
  				step([$class: 'ArtifactArchiver', artifacts: 'akka-http-service-assembly-0.1.jar'])
  			}
  		}
  	}

  	stage('Containerizing & Pushing to Registry') {
  		steps {
  			withCredentials([usernamePassword(credentialsId: '6f550157-8b4a-4c75-8e85-12e076bb6974', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
				sh '''
					./docker-build
				'''
  			}
  		}
  	}

  	stage('Deploy') {
  		when {
  			branch 'master'
  		}
  		steps {
  			sh '''
  				./k8s-starter.sh
  			'''
  		}
  	}
  }
}
