pipeline {
    agent any

    parameters {
        string(name: 'NAME', defaultValue: 'World')
    }

    stages {
        stage('Agent Info') {
            steps {
                // Print info about the agent/node
                sh 'echo "Running on: $(uname -a)"'
            }
        }

        stage('Checkout') {
            steps {
                // Pull the code from SCM (Git repo)
                checkout scm
            }
        }

        stage('Run Script') {
            steps {
                // Run the hello.sh script with parameter NAME
                sh "scripts/hello.sh \"${params.NAME}\" | tee output.txt"
            }
        }

        stage('Archive') {
            steps {
                // Save output.txt as artifact
                archiveArtifacts artifacts: 'output.txt', fingerprint: true
            }
        }
    }
}