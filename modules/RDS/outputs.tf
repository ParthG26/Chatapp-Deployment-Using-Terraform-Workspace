output "rds_instance_id" {
  description = "RDS Instance ID"
  value       = "RDS Instance ID: ${aws_db_instance.DB.id}"
}
output "rds_host"{
  description = "RDS  Endpoint Address"
  value= "${aws_db_instance.DB.address}"
}