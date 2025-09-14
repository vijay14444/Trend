provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0360c520857e3138f" # Amazon Linux 2
  instance_type = "t2.medium"
  key_name      = "Mykey"
  tags = { Name = "Jenkins-Server" }
}
