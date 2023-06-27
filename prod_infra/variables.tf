variable "prod_cidr_block" {
  type        = string
  description = "(Required) The CIDR block for the VPC."
}

variable "prod_instance_tenancy" {
  type        = string
  description = "usually it will be a default instance which is shared with the host. we can use either dedicated or host"
}


variable "prod_vpc_tags" {
  type        = map(any)
  description = "(Optional) A map of tags to assign to the resource."
}

variable "public_subnet_cidr" {
  type        = string
  description = "(Required) The CIDR block for the VPC."
}

variable "public_subnet_az" {
  type = string
}

variable "public_subnet_tags" {
  type = map(any)
}

variable "map_public_ip_on_launch" {
  type = bool
}

variable "private_subnet_cidr" {
  type        = string
  description = "(Required) The CIDR block for the VPC."
}

variable "private_subnet_az" {
  type = string
}

variable "private_subnet_tags" {
  type = map(any)
}

variable "map_public_ip_on_launch_privsubnet" {
  type = bool
}


variable "igw_cidr_block" {
  type        =string
  description ="igw cidr block"
  default="0.0.0.0/0"
}

variable "igw_tags" {
  type = map(any)
}




