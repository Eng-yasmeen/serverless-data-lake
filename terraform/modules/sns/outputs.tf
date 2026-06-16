output "sns_topic_arn" {
  description = "ARN of SNS Topic"
  value       = aws_sns_topic.alerts.arn
}

output "sns_topic_name" {
  description = "SNS Topic Name"
  value       = aws_sns_topic.alerts.name
}
