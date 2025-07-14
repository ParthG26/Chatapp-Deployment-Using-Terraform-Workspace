output "vpc_id" {
  description = "VPC has been created"
  value       = "${aws_vpc.main.id}"
}

output "public_subnets" {
  description = "IDs of the public subnets"
  value       = [
    aws_subnet.subnets["Public1"].id,
    aws_subnet.subnets["Public2"].id
  ]
}

output "private_subnets" {
  description = "IDs of the private subnets"
  value       = [
    aws_subnet.subnets["Private1"].id,
    aws_subnet.subnets["Private2"].id
  ]
}
