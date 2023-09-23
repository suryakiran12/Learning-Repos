# resource "aws_security_group" "Terrafform-SG-Allow-All" {
#   name= var.sg_name
#   description = "Example security group"

#   // Inbound rules (ingress)
#   ingress {
#     description = "Allowing all Inbound traffic"
#     from_port   = 0
#     to_port     = 0
#     protocol    = "tcp"
#     cidr_blocks = var.sg_cidr  # Allow incoming traffic from anywhere (be cautious with this)

#     // You can also use security group IDs for source instead of CIDR blocks
#     // security_groups = ["sg-12345678"]
#   }

#   // Outbound rules (egress)
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1" #all protocols
#     cidr_blocks = ["0.0.0.0/0"]  # Allow outgoing traffic to anywhere (be cautious with this)
#   }
# }
