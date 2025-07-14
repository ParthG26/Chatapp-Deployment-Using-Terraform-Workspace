output "frontend_instance_id" {
  description = "Frontend EC2 Instance ID"
  value       = "Frontend Instance ID: ${aws_instance.Frontend.id}"
}
output "frontend_public_ip" {
  description = "Public IP of the Frontend EC2 Instance"
  value       = aws_instance.Frontend.public_ip
}
output "backend_instance_id" {
  description = "Backend EC2 Instance ID"
  value       = aws_instance.Backend.id
}