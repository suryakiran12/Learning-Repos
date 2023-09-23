data "aws_ami" "example" {
  most_recent = true
  owners = ["amazon"] #you can give AWS Account ID
  filter {
    name = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*.0-x86_64-gp2"]
  }
}

output "ami_id" {
  value = data.aws_ami.example.id
}

# Define a data source to get information about the default VPC
data "aws_vpc" "default" {
  default = true # Set this to true to retrieve the default VPC
}

# Output the details of the default VPC
output "default_vpc_details" {
  value = data.aws_vpc.default
}

#security group creation by using default vpc
resource "aws_security_group" "allow-http" {
  name = "allow-http"
  vpc_id = data.aws_vpc.default.id
  description = "allowing port 80" # you can keep this in variable

    ingress {
        description      = "Allowing all inbound traffic"
        from_port        = 80 # this is number
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1" #all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }
}