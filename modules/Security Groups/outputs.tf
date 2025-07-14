output "rds_sg_id"{
    description="The Id of The Security Group of RDS"
    value="${aws_security_group.rds_sg.id}"
}
output "private_sg_id"{
    description="The ID of the Security Group of Backend"
    value="${aws_security_group.private_sg.id}"
}
output "public_sg_id"{
    description="The ID of the Security Group of Frontend"
    value="${aws_security_group.public_sg.id}"
}