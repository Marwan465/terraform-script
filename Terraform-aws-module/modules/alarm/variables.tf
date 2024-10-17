variable "instance_id" {
  description = "EC2 instance ID to monitor"
  type        = string
}

variable "email" {
  description = "Email to send the alert to"
  type        = string
}