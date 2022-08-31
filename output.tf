output "dev_domain" {
  value = module.dev_deploy_s3.s3_name
}

output "prod_domain" {
  value = module.prod_deploy_s3.s3_name
}