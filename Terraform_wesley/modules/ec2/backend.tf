# terraform {
#   backend "s3" {
#     bucket         = "2560-development-s5wesley-tf-state"
#     key            = "aws-terraform/ec2/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "2560-development-s5wesley-tf-state-lock"
#   }
# }