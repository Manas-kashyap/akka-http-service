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
  			withCredentials([usernamePassword(credentialsId: 'caad6e6d-08a2-4021-8110-571d671c6c23', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
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