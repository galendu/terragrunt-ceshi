// terraform {
//   source = "../../../modules/ecs"
// }

// locals {
//   // # 使用 get_workspace() 获取当前工作空间
  
//   config = yamldecode(file("${get_terragrunt_dir()}/../../../config/project.yaml"))["dev"]
// }

// // terragrunt apply --terragrunt-working-dir live/dev/ecs
// inputs = {
//   region         = local.config["region"]
//   instance_type  = local.config["ecs_instance_type"]
//   instance_count = local.config["ecs_count"]
// }