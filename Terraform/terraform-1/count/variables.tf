variable "ami_id" {
    type = string                      
    default = "ami-0bb6af715826253bf"  
}

variable "instance_names" {
  type = list
  default = ["MongoDB", "Cart", "Catalogue", "User" , "Redis", "MySQL", "RabbitMQ", "Shipping", "Payment", "Web"]
}

variable "zone_id" {
  default = "Z0627607N4DQF4IZSG38"
}

variable "domain" {
    default = "surya-online-training.com"
}