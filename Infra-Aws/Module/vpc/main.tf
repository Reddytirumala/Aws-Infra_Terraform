provider "aws" {
  region     = var.vpc_region
 
}

resource "aws_vpc" "vpc" {
  cidr_block       = var.CIDR_vpc
  tags = {
    Name = "${var.vpc_name}-${var.vpc_region}"
  }
}

# create Public subnets
resource "aws_subnet" "pubsub-1a" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public1a-cidr
  availability_zone = var.pubsub1a_region
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.pub-sub-1a_name}_${var.pubsub1a_region}"
  }
}

#create second public subnet -1b

resource "aws_subnet" "pubsub-1b" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public1b-cidr
  availability_zone = var.pubsub1b_region
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.pub-sub-1b_name}_${var.pubsub1b_region}"
  }
  
}

#create private subnet-1c

resource "aws_subnet" "private-sub-1c" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.prav1c-cidr
  availability_zone = var.prav1c_region
  tags = {
    Name = "${var.prav-sub-1c_name}_${var.prav1c_region}"
  }
}

# Create Internet Gateway IGW

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.IGW_name
  }
}


#create public Routetable

resource "aws_route_table" "public-route" {
    vpc_id = aws_vpc.vpc.id
    route  {
     cidr_block = var.cidr_block
     gateway_id = aws_internet_gateway.IGW.id

    }
     tags = {
       Name = var.pub-route-name
  }
  
}

# Attach Public subnets to public Routable

resource "aws_route_table_association" "pubsub-1a" {

  subnet_id      = aws_subnet.pubsub-1a.id
  route_table_id = aws_route_table.public-route.id

}

resource "aws_route_table_association" "pubsub-1b" {

  subnet_id      = aws_subnet.pubsub-1b.id
 route_table_id = aws_route_table.public-route.id

}

# Create NAT-GATE and associte with public-1b subnet

/* resource "aws_nat_gateway" "nat" {

  # allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.pubsub-1b.id

  tags = {
    Name = "NAT-Gateway"
  }

  depends_on = [
    aws_internet_gateway.IGW
  ]
} 

# Create Private Routable

resource "aws_route_table" "private-route" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id

  }
   tags = {
    Name = "Private-Route"
  }
}

# Associte private route-table to private subnet

resource "aws_route_table_association" "private-1c" {
  subnet_id = aws_subnet.private-sub-1c.id
  route_table_id = aws_route_table.private-route.id
}
*/