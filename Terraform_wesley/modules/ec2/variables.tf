variable "tags" {
  type = map(any)
  default = {
    "id"             = "2560"
    "owner"          = "DevOps Easy Learning"
    "teams"          = "DEL"
    "environment"    = "development"
    "project"        = "s5wesley"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_name" {
  type = string
}

variable "instance_params" {
  type = any
  default = {
    instance_type          = "t2.micro"
    key_name               = "5dada"
    vpc_security_group_ids = "sg-0d04cb9e5e9498eae"
    subnet_id              = "subnet-0efba499e740dd3a1"
    volume_size            = "10"
  }
}