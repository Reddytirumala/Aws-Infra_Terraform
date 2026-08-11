resource "aws_instance" "ec2" {
   ami           = var.ami_id
   instance_type = var.instance_type
   key_name      = var.key_name

   subnet_id = var.subnet_id
   vpc_security_group_ids = var.security_group_ids
   
   #private_ip                  = var.private_ip
   associate_public_ip_address = var.associate_public_ip_address

   tags = {
     Name = "${var.instance_name}-${var.Environment}-${var.region}"
     Environment = var.Environment
   }
}

#---------Instance Security Group-----------------
/*resource "aws_security_group" "ec2_sg" {
    name = var.ec2_sg_name
    description = "Security group for EC2 instances"
    vpc_id = var.vpc_id

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"] 
    }
}*/
