module "security_group" {
  source = "./modules/security_group"
}

module "ec2" {
  source = "./modules/ec2"

  security_group_id = module.security_group.sg_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}
