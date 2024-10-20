include "root" {
  path = find_in_parent_folders()
}

include "env" {
    path = "${get_terragrunt_dir()}/../../env/subnet.hcl"
    expose = true
}

terraform {
  source = "${include.env.locals.source_base_url}"
}
