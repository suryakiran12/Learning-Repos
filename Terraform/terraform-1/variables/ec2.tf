#Creating an EC2 Instance using terraform
# resource "aws_instance" "Terraform-Test-instance" {
#   ami="ami-0bb6af715826253bf" #devops-practice in us-east-1
#   instance_type = "t2.micro"
# }  

# #Creating EC2 Instance using Varibles
# resource "aws_instance" "Terraform-Test-instance" {
#   ami=var.ami_id
#   instance_type = var.instance_type
#   tags ={
#   Name = "Linux" 
#   }
# }

# #Creating EC2 Instance using Varibles and security groups
# resource "aws_instance" "Terraform-Test-instance" {
#   ami=var.ami_id
#   instance_type = var.instance_type
#   tags ={
#   Name = "Linux123" 
#   }
#   security_groups = [aws_security_group.Terrafform-SG-Allow-All.name]
# }

# #Create EC2 Instance using multiple Tags
# resource "aws_instance" "Terraform-Test-Instance" {
#   ami=var.ami_id
#   instance_type = var.instance_type
  
#   tags = {
#     Name = "MongoDB"
#     Environment = "DEV"
#     Terraform = "true"
#     project = "Roboshop"
#     component = "MongoDB"
#   }
# }

#create EC2 Instance using mutiple tags from varibles file
resource "aws_instance" "Terraform-Test-Instnace" {
  ami=var.ami_id
  instance_type = var.instance_type
  tags=var.tags 
}

