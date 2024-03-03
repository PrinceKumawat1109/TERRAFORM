resource "aws_instance" "ec2" {
  ami = "ami-03..."
  instance_type = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}

output "PrivateIP" {
  value = aws_instance.db.private_ip
}