module "sns" {
  source = "./modules/sns"

  project_name = var.project_name
  environment  = var.environment
}

module "cloudwatch" {
  source = "./modules/cloudwatch"

  project_name = var.project_name
  environment  = var.environment

  sns_topic_arn = module.sns.sns_topic_arn
}
