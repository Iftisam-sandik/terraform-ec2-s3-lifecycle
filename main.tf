terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project   = "TerraformAssignment"
      Module    = "Module7"
      ManagedBy = "Terraform"
    }
  }
}

data "aws_caller_identity" "current" {}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  filter {
    name   = "availability-zone"
    values = ["us-east-1a"]
  }
}

data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

locals {
  bucket_name = "terraform-assignment-${data.aws_caller_identity.current.account_id}-module7"
}

resource "aws_instance" "assignment_ec2" {
  ami           = data.aws_ssm_parameter.al2023_ami.value
  instance_type = "t3.micro"
  subnet_id     = data.aws_subnets.default.ids[0]

  tags = {
    Name = "TerraformAssignment-EC2"
  }
}

resource "aws_s3_bucket" "assignment_bucket" {
  bucket = local.bucket_name

  tags = {
    Name = "TerraformAssignment-S3"
  }
}
