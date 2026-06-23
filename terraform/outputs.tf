output "sns_topic_arn" {
  value = module.sns.sns_topic_arn
}

output "sns_topic_name" {
  value = module.sns.sns_topic_name
}

output "cloudwatch_log_group" {
  value = module.cloudwatch.log_group_name
}

output "cloudwatch_alarm" {
  value = module.cloudwatch.alarm_name
}

output "raw_bucket" {
  value = module.s3.raw_bucket
}

output "curated_bucket" {
  value = module.s3.curated_bucket
}

output "aggregated_bucket" {
  value = module.s3.aggregated_bucket
}

output "glue_database" {
  value = module.glue.glue_database_name
}

output "glue_role" {
  value = module.glue.glue_role_arn
}

output "firehose_stream" {
  value = module.firehose.firehose_name
}

output "athena_workgroup" {
  value = module.athena.athena_workgroup
}

output "athena_results_bucket" {
  value = module.s3.athena_results_bucket
}
