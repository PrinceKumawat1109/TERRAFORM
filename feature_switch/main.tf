provider "aws" {
    region = "eu-west-2"
}

variable "envioronment" {
    type = string
}

resource "aws_instance" "ec2" {
    ami = "ami-032598fcc7e9d1c7a"
    instance_type = "t2.micro"
    count = var.envioronment == "prod" ? 1: 0
}