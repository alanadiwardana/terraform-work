terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-<YOUR_IMAGE>"
  instance_type = "t2.nano"
  key_name = "my_key_pair"
  vpc_security_group_ids = [aws_security_group.allow_http.id, aws_security_group.allow_ssl.id]
  tags = {
    Name = "AmazonLinuxNginx"
  }
}

