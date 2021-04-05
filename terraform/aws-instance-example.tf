provider "aws" {
  region = "eu-central-1"
  access_key = "AKIAQX3PIDEDODCUW6XU"
  secret_key = "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"
}

resource "aws_instance" "web1" {
  ami = "ami-0607bcb56a568eb85"
  instance_type = "t2.micro"
}