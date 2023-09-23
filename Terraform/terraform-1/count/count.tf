resource "aws_instance" "count-understnding" {
    count = 10
    ami = var.ami_id
    #instance_type = "t2.micro" #Creates all 10 instances with t2.micro
    instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "MySQL" ? "t3.medium" : "t2.micro"
    tags = {
      #Name = "Roboshop"  #creates all 10 instance with name Roboshop
      Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "record" {
  count=10
  zone_id = var.zone_id
  name = "${var.instance_names[count.index]}.${var.domain}" #interpolation
  type = "A"
  ttl = "1"
  records = [aws_instance.count-understnding[count.index].private_ip]
}

resource "aws_key_pair" "deployer" {
    key_name = "devops-pub"
    public_key = file("${path.module}/devops.pub")
}

resource "aws_instance" "file-function" {
  ami = var.ami_id #devops-practice in us-east-1
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
}