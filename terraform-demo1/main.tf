module "demo-module-dev" {
  source = "./modules"
  ami_id = var.ami_id
  instance_type_name = var.instance_type_name
  instance_name = var.instance_name
  provider_region  = var.provider_region
}


