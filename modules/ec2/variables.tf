variable "db_host"{
  type=string
  description="The Address of RDS Instance"
}
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
variable "private_subnets"{
  type=list
  description="The subnets created"
}
variable "private_sg_id"{
  type=string
  description="The ID of SecurityGroup of Backend Instance"
}
variable "public_subnets"{
  type=list
  description="The subnets created"
}
variable "public_sg_id"{
  type=string
  description="The ID of SecurityGroup of Backend Instance"
}
variable "instance_type"{
  type=string
  description ="The type of Instance"
}