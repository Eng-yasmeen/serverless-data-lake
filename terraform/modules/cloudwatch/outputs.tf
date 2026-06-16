output "log_group_name" {
  value = aws_cloudwatch_log_group.main.name
}

output "alarm_name" {
  value = aws_cloudwatch_metric_alarm.terraform_alarm.alarm_name
}
