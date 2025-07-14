variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnets" {
  default = {
    Public1  = { cidr = "10.0.1.0/24", az = "ap-south-1a" }
    Public2  = { cidr = "10.0.2.0/24", az = "ap-south-1b" }
    Private1 = { cidr = "10.0.3.0/24", az = "ap-south-1a" }
    Private2 = { cidr = "10.0.4.0/24", az = "ap-south-1b" }
  }
}