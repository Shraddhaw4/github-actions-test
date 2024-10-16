terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                   = "ap-south-1"
}

resource "aws_instance" "test" {
  ami = "ami-04a37924ffe27da53"
  instance_type = "t2.micro"
  tags = {
    Name = "Test-instance"
  }
}
