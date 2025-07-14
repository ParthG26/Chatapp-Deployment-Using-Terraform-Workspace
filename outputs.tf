output "vpc_outputs" {
  value = module.vpc
}
output "sg_outputs" {
  value = module.sg
}
output "rds_outputs" {
  value = module.rds
}
output "ec2_outputs" {
  value = module.ec2_instances
}