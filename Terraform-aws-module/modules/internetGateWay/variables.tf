

variable "vpc_id" {
  description = "The ID of the VPC to which the Internet Gateway will be attached."
  type        = string
}

variable "gateway_name" {
  description = "The name of the Internet Gateway."
  type        = string
}
variable "route_table_name" {
  description = "The name of the Route Table."
  type        = string
}
variable "subnet_id" {
  description = "The ID of the subnet where the Route Table will be associated."
  type        = string
}