output "raw_bucket" {
  value = aws_s3_bucket.raw.bucket
}

output "curated_bucket" {
  value = aws_s3_bucket.curated.bucket
}

output "aggregated_bucket" {
  value = aws_s3_bucket.aggregated.bucket
}

output "raw_bucket_arn" {
  value = aws_s3_bucket.raw.arn
}
