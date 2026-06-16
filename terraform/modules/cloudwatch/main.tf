resource "aws_cloudwatch_log_group" "main" {
  name              = "/aws/${var.project_name}/${var.environment}"
  retention_in_days = 30
}

resource "aws_cloudwatch_metric_alarm" "terraform_alarm" {

  alarm_name = "${var.project_name}-${var.environment}-terraform-alarm"

  comparison_operator = "GreaterThanThreshold"

  evaluation_periods = 1

  metric_name = "CPUUtilization"

  namespace = "AWS/EC2"

  period = 300

  statistic = "Average"

  threshold = 80

  alarm_description = "CPU exceeds 80 percent"

  alarm_actions = [var.sns_topic_arn]

}

