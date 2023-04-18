provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "foo" {
  ami           = "ami-069aabeee6f53e7bf" # us-west-2
  instance_type = "t2.micro"
  tags = {
    Name = "TF-Instance"
  }
}
