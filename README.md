# gcp-infrastructure
Creation of Jenkins instance, SQL Instance and GKE Cluster

# Steps to create Infrasturcture 

1) Create a Service account with roles as 
   a) Project Editor
   b) Project IAM Admin
2) Download .json key of service account.
3) update key path in provider.tf
4) Create a storage bucket to save terraform state.
5) update gcs name in backend.tf 
6) update variables in terraform.tfvars.json

# Run below commands

1) Terraform init
2) Terraform plan
3) Terraform apply 

Once Infrastructure is created you can access Jenkinks at external Ip and port 8080 ex : http://<external_ip>:8080
login with userid: admin, password: admin

Install plugins 
1) Pipeline
2) Git
