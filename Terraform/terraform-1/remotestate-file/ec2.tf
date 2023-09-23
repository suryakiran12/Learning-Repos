resource "aws_instance" "roboshop" {
    ami = var.ami_id
    instance_type = "t2.micro"
    tags = {
      Name = "roboshop"
    } 
}



