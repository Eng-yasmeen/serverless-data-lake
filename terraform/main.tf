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

module "s3" {
  source = "./modules/s3"

  project_name = var.project_name
  environment  = var.environment
}

module "glue" {
  source = "./modules/glue"

  project_name = var.project_name
  environment  = var.environment

  raw_bucket     = module.s3.raw_bucket
  curated_bucket = module.s3.curated_bucket
}

module "firehose" {
  source = "./modules/firehose"

  project_name = var.project_name
  environment  = var.environment

  raw_bucket_arn = module.s3.raw_bucket_arn
}
