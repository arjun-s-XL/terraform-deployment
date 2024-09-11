#main.tf

provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "centos7" {
	ami = "ami-0148782d1455edfe9"
	instance_type = "t2.micro"
	key_name = "centos7"
	tags = {
		Name = "CenOS7-Instance"
	}
}

output "instance_id"{
	value=aws_instance.centos7.id
}

output "instance_public_ip"{
	value=aws_instance.centos7.public_ip
}
