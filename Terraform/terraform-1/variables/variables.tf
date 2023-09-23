variable "ami_id" {
  type = string                      #Datatype
  default = "ami-0bb6af715826253bf"  #Value
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "sg_name" {
   default="Allow-All"
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type= map
  default  = {
    Name = "MongoDB"
    Environment = "DEV"
    Terraform = "true"
    project = "Roboshop"
    component = "MongoDB"
  }
  
}