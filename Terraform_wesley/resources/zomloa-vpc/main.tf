provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


resource "module" "zomloa-vpc" {
  source = "../../modules/zomloa-vpc"
  // Pass variables to the module if needed
}
