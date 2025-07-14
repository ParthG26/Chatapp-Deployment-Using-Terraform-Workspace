instance_type = "t2.medium"
vpc_cidr      = "30.0.0.0/16"
subnets = {
  Public1  = { cidr = "30.0.1.0/24", az = "ap-south-1a" }
  Public2  = { cidr = "30.0.2.0/24", az = "ap-south-1b" }
  Private1 = { cidr = "30.0.3.0/24", az = "ap-south-1a" }
  Private2 = { cidr = "30.0.4.0/24", az = "ap-south-1b" }
}