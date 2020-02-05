pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'init_venv.sh'
		sh 'python --version'
		sh 'rm -R .venv'
            }
        }
    }
}
