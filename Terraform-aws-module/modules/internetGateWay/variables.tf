

variable "vpc_id" {
  description = "The ID of the VPC to which the Internet Gateway will be attached."
  type        = string
}

variable "gateway_name" {
  description = "The name of the Internet Gateway."
  type        = string
}
