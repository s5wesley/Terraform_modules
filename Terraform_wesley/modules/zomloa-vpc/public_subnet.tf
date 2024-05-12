resource "aws_subnet" "public" {
  count                   = length(var.public_subnet_cidr_blocks)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_blocks[count.index]
  availability_zone       = "us-east-1a" // Change AZ if needed
  map_public_ip_on_launch = true

  tags = var.public_subnet_tags
}
