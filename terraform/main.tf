# Main file for DevOps HomeWork
provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "/home/cloud_user/.aws/credentials"
  profile                 = "terraform"
}









