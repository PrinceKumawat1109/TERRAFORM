provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-03..."
  instance_type = "t2.micro"
}
