
# # 生成banckend.tf
# generate "backend" {
#   path      = "backend.tf"
#   if_exists = "overwrite_terragrunt"
#   contents  = <<EOF
# terraform {
#   backend "oss" {
#     bucket         = "gmi-demo-1010-dx"
#     key                 = "live-test-backend.tfstate"
#     region         = "cn-shanghai"
#     tablestore_endpoint = "https://gmi-OTS-1010.cn-shanghai.ots.aliyuncs.com"
#     tablestore_table    = "gmi_table"
#   }
# }
# EOF
# }

# # 生成provider.tf
# generate "provider" {
#   path      = "provider.tf"
#   if_exists = "overwrite_terragrunt"
#   contents  = <<EOF
# provider "alicloud" {
#   region = "cn-shanghai"
#   profile = "default"
# }
# EOF
# }

remote_state {
  backend = "oss"
  config = {
    bucket              = "gmi-demo-1010-dx"
    key                 = "live-test-backend.tfstate"
    region              = "cn-shanghai"
    tablestore_endpoint = "https://gmi-OTS-1010.cn-shanghai.ots.aliyuncs.com"
    tablestore_table    = "gmi_table"
  }
}

// terraform {
//   extra_arguments "common_vars" {
//     commands = [
//       get_terraform_commands_that_need_vars(),
//       "init",
//       "apply",
//       "refresh",
//       "import",
//       "plan",
//       "taint",
//       "untaint"
//     ]
    

//     arguments = [
//       "-var-file=${get_tfvars_file()}",
//       "-lock-timeout=20m"
//     ]
//   }

// }

