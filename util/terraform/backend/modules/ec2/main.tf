resource "aws_instance" "anyhasher_server" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
  key_name      = "aws-kp-devops"
  
  tags          = {
    Name = var.instance_name,
    Purpose = "Course", 
    App = "DevOps"
  }
}

variable "instance_name" {
  description = "EC2 instance name"
}

output "ec2_public_ip" {
  value = aws_instance.anyhasher_server.public_ip
}

output "ec2_public_url" {
  value = aws_instance.anyhasher_server.public_dns
}

