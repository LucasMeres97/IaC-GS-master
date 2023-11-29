# PROVIDER
terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = "~> 4.34"
    template = "~> 2.2"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "web" {
  cidr_block = "172.0.0.0/16"
}

resource "aws_subnet" "web-1" {
  vpc_id                  = aws_vpc.web.id
  cidr_block              = "172.0.2.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}

