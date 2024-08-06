resource "aws_vpc" "ibm-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ibm-vpc"
  }
}
resource "aws_subnet" "ibm-web-subnet" {
  vpc_id     = aws_vpc.ibm-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "ibm-web-subnet"
  }
}
resource "aws_subnet" "ibm-db-subnet" {
  vpc_id     = aws_vpc.ibm-vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "ibm-db-subnet"
  }
}
resource "aws_subnet" "ibm-api-subnet" {
  vpc_id     = aws_vpc.ibm-vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "ibm-api-subnet"
  }
}