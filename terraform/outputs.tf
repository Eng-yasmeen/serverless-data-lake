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
