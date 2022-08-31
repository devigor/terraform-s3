provider "aws" {
  region = var.aws_region
}

module "dev_deploy_s3" {
  source      = "./modules/s3"
  bucket_name = var.dev_bucket_name
  tags = {
    Name       = var.dev_bucket_name
    Enviroment = "Desenvolvimento"
  }
}

module "prod_deploy_s3" {
  source      = "./modules/s3"
  bucket_name = var.prod_bucket_name
  tags = {
    Name       = var.prod_bucket_name
    Enviroment = "Produção"
  }
}
