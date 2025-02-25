provider "aws" {
  region = var.aws_region
  shared_credentials_file = "$HOME/.aws/credentials"
}

module "network" {
  source = "./modules/network"

  bastion_instance_type = var.bastion_instance_type
}
