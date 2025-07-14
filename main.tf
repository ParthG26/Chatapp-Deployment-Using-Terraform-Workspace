module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnets  = var.subnets
}
module "sg" {
  source = "./modules/Security Groups"
  vpc_id = module.vpc.vpc_id
}
module "rds" {
  source          = "./modules/RDS"
  rds_sg_id       = module.sg.rds_sg_id
  private_subnets = module.vpc.private_subnets
}
module "ec2_instances" {
  source          = "./modules/ec2"
  private_sg_id   = module.sg.private_sg_id
  private_subnets = module.vpc.private_subnets
  public_sg_id    = module.sg.public_sg_id
  public_subnets  = module.vpc.public_subnets
  db_host         = module.rds.rds_host
  instance_type   = var.instance_type
}
