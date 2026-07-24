# VPC Region
variable "vpc_region" {
  description = "this is vpc creation Region"
  type = string
  default = "us-east-1"
}

# CIDR_Block Range in VPC
variable "CIDR_vpc" {
  description = "VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

# VPC Name
variable "vpc_name" {
  description = "vpc name"
  type = string
  default = "Tirumala_VPC"
}

#subnet CIDR Block
variable "public1a-cidr" {
    description = "this is public subnet 1a cidr block range"
    type = string
    default = "10.0.1.0/24"
}

variable "public1b-cidr" {
    description = "this is public subnet 1b cidr block range"
    type = string
    default = "10.0.2.0/24"
}

variable "pubsub1b_region" {
  description = "public subnet region"
  type = string
  default = "us-east-1b"
}

variable "pubsub1a_region" {
  description = "public subnet region"
  type = string
  default = "us-east-1a"
}

variable "prav1c_region" {
  description = "public subnet region"
  type = string
  default = "us-east-1c"
}

# private subnet cidr block range
variable "prav1c-cidr" {
    description = "this is private subnet 1c cidr block range"
    type = string
    default = "10.0.3.0/24"
}
#

# Pub-Sub-1a Name
variable "pub-sub-1a_name" {
  description = "public subnet name"
  type = string
  default = "Tirumala_Pub-sub-1a"
}

# Pub-Sub-1b Name
variable "pub-sub-1b_name" {
  description = "public subnet name"
  type = string
  default = "Tirumala_Pub-sub-1b"
}

# Private-Sub-1c Name
variable "prav-sub-1c_name" {
  description = "private subnet name"
  type = string
  default = "Tirumala_Private-sub-1c"
}

# IGW Name
variable "IGW_name" {
  description = "Internet Gateway name"
  type = string
  default = "Tirumala_IGW"
}


variable "cidr_block" {
  type        = string
  description = "CIDR block for internet routing"
  default     = "0.0.0.0/0"
}

variable "pub-route-name" {
    type = string
    description = "Routable Name"
    default = "Public-Route-Table"
}