resource "aws_iam_role" "firehose_role" {
  name = "${var.project_name}-firehose-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "firehose.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy" "firehose_policy" {
  name = "firehose-s3-policy"
  role = aws_iam_role.firehose_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Action = [
        "s3:PutObject",
        "s3:AbortMultipartUpload",
        "s3:GetBucketLocation"
      ],
      Resource = [
        var.raw_bucket_arn,
        "${var.raw_bucket_arn}/*"
      ]
    }]
  })
}

resource "aws_kinesis_firehose_delivery_stream" "stream" {
  name        = "${var.project_name}-${var.environment}-firehose"
  destination = "extended_s3"

  extended_s3_configuration {
    role_arn   = aws_iam_role.firehose_role.arn
    bucket_arn = var.raw_bucket_arn

    buffering_interval = 60
    buffering_size     = 5

    compression_format = "GZIP"
  }
}
