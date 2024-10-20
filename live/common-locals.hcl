locals {
  # 使用 get_workspace() 获取当前工作空间
  
  # 加载 YAML 配置文件并选择当前环境的配置
  root_dir = get_env("ROOT_DIR", "${get_parent_terragrunt_dir()}")
  // root_dir = get_env("ROOT_DIR", "/h/ex/aliyun/ceshi")

  

  config = yamldecode(file("${local.root_dir}/../config/project.yaml"))["dev"]

  // debug_config = local.root_dir
  
}
output "debug_config" {
  value = local.root_dir
}