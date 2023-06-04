variable "public_subnet_one" {
  type        =string
  description ="subnet cidr range"
} 

variable "public_subnet_one_az" {
  type        =string
  description ="availability zone"
}

variable "public_subnet_one_map_public_ip_on_launch" {
  type        =bool
  description ="map public ip on launch"
}

variable "public_subnet_one_tags" {
  type        =map
  description ="public subnet one tags"
}

variable "public_subnet_two" {
  type        =string
  description ="subnet cidr range"
}

variable "public_subnet_two_az" {
  type        =string
  description ="availability zone"
}

variable "public_subnet_two_map_public_ip_on_launch" {
  type        =bool
  description ="map public ip on launch"
}

variable "public_subnet_two_tags" {
  type        =map
  description ="public subnet two tags"
}

variable "private_subnet_one" {
  type        =string
  description ="subnet cidr range"
}

variable "private_subnet_one_az" {
  type        =string
  description ="availability zone"
}

variable  "private_subnet_one_map_public_ip_on_launch" {
  type        =bool
  description ="map private ip on launch"
}

variable "private_subnet_one_tags" {
  type        =map
  description ="private subnet one tags"
}

variable "private_subnet_two" {
  type        =string
  description ="subnet cidr range"
}

variable "private_subnet_two_az" {
  type        =string
  description ="availability zone"
}
 variable  "private_subnet_two_map_public_ip_on_launch" {
  type        =bool
  description ="map private ip on launch"
}

variable "private_subnet_two_tags" {
  type        =map
  description ="private subnet one tags"
}

variable "igw_cidr" {
  type        =string
  description ="igw cidr block"
  default="0.0.0.0/0"
}

variable "public_route_tag" {
  type        =map
  description ="public route tag"
}

variable "private_route_tag" {
  type        =map
  description ="private route tag"
}