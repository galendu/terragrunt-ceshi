locals {
  # Load the relevant env.hcl file based on where terragrunt was invoked. This works because find_in_parent_folders
  # always works at the context of the child configuration.
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  env_name = local.env_vars.locals.env

//   config = yamldecode(file(find_in_parent_folders("project.yaml")))[local.env_name]

  source_base_url = "../../modules/subnet"
}

dependency "vpc" {
  config_path = "../vpc"
}


inputs = {
  env            = local.env_name
  name_prefix = "example-subnet-${local.env_name}"
//   region              = config.region
  vpc_id              = dependency.vpc.outputs.vpc_id[0]
  subnet_cidr_blocks  = ["172.16.1.0/24", "172.16.2.0/24"]
  availability_zones  = ["cn-beijing-a", "cn-beijing-b"]
  tags = {
    Environment = local.env_name
  }
}