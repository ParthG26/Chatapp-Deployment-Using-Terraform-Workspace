variable "db_name" {
  description = "The name for the RDS Instance"
  type        = string
  default     = "ChatApp"
}
variable "db_user" {
  description = "The Username for the RDS Instance"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The Password for the RDS Instance"
  type        = string
  default     = "chatapp_admin"
}
variable "rds_sg_id"{
  type=string
  description="The ID of SecurityGroup of RDS Instance"
}
variable "private_subnets"{
  type=list
  description="The subnets created"
}