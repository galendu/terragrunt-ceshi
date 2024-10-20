locals {
  # Load the relevant env.hcl file based on where terragrunt was invoked. This works because find_in_parent_folders
  # always works at the context of the child configuration.
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  env_name = local.env_vars.locals.env
  // config = yamldecode(file(find_in_parent_folders("project.yaml")))[local.env_name]

  source_base_url = "../../modules/vpc"
}


inputs = {
  env            = local.env_name
  name_prefix = "example-vpc-${local.env_name}"
}