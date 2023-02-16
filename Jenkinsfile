pipeline {
    agent {
        label 'ios'
    }

    options {
        // Accept Xcode license automatically
        xcodeLicense {
            acceptAutomatically()
        }
    }

    stages {
        stage('Prepare') {
        }

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Test') {
            steps {
                sh "swift test --enable-code-coverage"
            }
        }

        stage('Coverage') {
            steps {
                sh "xcrun llvm-cov export -format=\"lcov\" .build/debug/codecov/Sources/*.dSYM/Contents/Resources/llvm/codecov-app -instr-profile .build/debug/codecov/Sources/*.build/codecov/main.profdata > codecov.info"
            }
            post {
                always {
                    publishCoverage adapters: [lcov(codeCoverage: [path: 'codecov.info'])]
                }
            }
        }

       /* stage('Notify') {
            steps {
                withMattermost(
                    credentialsId: 'mattermost-credentials',
                    serverUrl: 'https://mattermost.example.com'
                ) {
                    mattermostSend color: 'good', message: "SPM package tests and coverage succeeded."
                }
            }
        }*/
    }
}