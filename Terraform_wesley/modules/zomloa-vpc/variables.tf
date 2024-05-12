variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"] // Add more if needed
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"] // Add more if needed
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "public_subnet_tags" {
  description = "Tags for public subnets"
  type        = map(string)
  default = {
    Name        = "Public Subnet"
    Environment = "Production"
  }
}

variable "private_subnet_tags" {
  description = "Tags for private subnets"
  type        = map(string)
  default = {
    Name        = "Private Subnet"
    Environment = "Production"
  }
}

variable "internet_gateway_tags" {
  description = "Tags for internet gateway"
  type        = map(string)
  default = {
    Name        = "Internet Gateway"
    Environment = "Production"
  }
}

variable "route_table_tags" {
  description = "Tags for route table"
  type        = map(string)
  default = {
    Name        = "Route Table"
    Environment = "Production"
  }
}

variable "security_group_tags" {
  description = "Tags for security group"
  type        = map(string)
  default = {
    Name        = "Security Group"
    Environment = "Production"
  }
}
