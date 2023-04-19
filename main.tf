# Terraform Block
terraform {
  required_version = "~> 0.14.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

resource "aws_instance" "foo" {
  ami           = "ami-069aabeee6f53e7bf" # us-west-2
  instance_type = "t2.micro"
  tags = {
    Name = "TF-Instance"
  }
}
