provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (for us-west-2)
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}
