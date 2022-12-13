pipeline{
    agent any
    tools{
        terraform 'terraform-11'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'git', url: 'https://github.com/PrachiP29/Terraform_Task'
            }
        }
        stage('Terraform Init '){
            steps{
                withCredentials([[
                $class: 'AmazonWebServicesCredentialsBinding',
                credentialsId: '954077833971',
                accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])  {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan'){
            steps{
                withCredentials([[
                $class: 'AmazonWebServicesCredentialsBinding',
                credentialsId: '954077833971',
                accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])  {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply'){
            steps{
                script{
                    withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: '954077833971',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])  {
                        
                        sh "terraform apply --auto-approve"
                    }
                    
                }
            }
        }
       
    }    
}    
