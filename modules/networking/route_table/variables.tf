variable "vpc_id" {
    type = string
}
 variable "igw_cidr_block" {
    type = string
    default = "0.0.0.0/0"
}

variable "gateway_id" {
    type = string
    
}

variable "route_tags" {
    type = map
    description = "(Optional) A map of tags to assign to the resource."
}
