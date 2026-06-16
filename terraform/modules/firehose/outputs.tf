output "firehose_name" {
  value = aws_kinesis_firehose_delivery_stream.stream.name
}

output "firehose_role_arn" {
  value = aws_iam_role.firehose_role.arn
}
