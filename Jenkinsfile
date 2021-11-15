pipeline {
  agent any
    stages {
        stage('Pull') {
             steps{
                script{
                    checkout([$class: 'GitSCM', branches: [[name: '*/master']],
                        userRemoteConfigs: [[credentialsId: '4c4fd437-a6c4-4398-9ee6-e948f52ed739',
                            url: 'https://github.com/hamza822/my-app.git']]])
                }
            }
        }


 stage('Install') {
             steps{
                script{
                    sh "sudo npm install"
                }
            }
        }

	stage ('Build') {
	
			steps {
			
			sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml"
	
			}
	}


    stage('Docker') {
               steps{
                script{
                    sh "sudo ansible-playbook Ansible/docker.yml -i Ansible/inventory/host.yml"
                }
            }
        }


stage('docker_registry') {
    steps{
    script {
        sh "ansible-playbook Ansible/docker-registry.yml -i Ansible/inventory/host.yml "
          }
       }
    }



      }
}
