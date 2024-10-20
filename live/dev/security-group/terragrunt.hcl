// terraform {
//   source = "../../../modules/security-group"
// }

// dependency "vpc" {
//   config_path = "../vpc"
// }

// locals {
//   # 使用 get_workspace() 获取当前工作空间
  
//   # 从 YAML 文件中加载当前环境的配置
//   config = yamldecode(file("${get_terragrunt_dir()}/../../../config/project.yaml"))["dev"]
// }

// inputs = {
//   vpc_id         = dependency.vpc.outputs.vpc_id
//   security_groups = local.config["security_groups"]
// }