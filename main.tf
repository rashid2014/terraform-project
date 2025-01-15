terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ca-central-1"
}

resource "aws_instance" "app_server" {
  ami                    = "ami-004d18eae1ef10a65"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0c99e27afc962366d"]
  subnet_id              = "subnet-024e23b0d4ba53004"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_instance" "web_server" {
  ami                    = "ami-004d18eae1ef10a65"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0c99e27afc962366d"]
  subnet_id              = "subnet-024e23b0d4ba53004"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "harunmetroc14jan2025"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}