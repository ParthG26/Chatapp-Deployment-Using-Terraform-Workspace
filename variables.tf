variable "instance_type" {
  type    = string
  default = "t2.micro" 
}
variable "vpc_cidr" {
  type = string
}
variable "subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}