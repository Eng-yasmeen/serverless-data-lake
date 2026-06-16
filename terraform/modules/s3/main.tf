resource "aws_s3_bucket" "raw" {
  bucket = "${var.project_name}-${var.environment}-raw"
}

resource "aws_s3_bucket" "curated" {
  bucket = "${var.project_name}-${var.environment}-curated"
}

resource "aws_s3_bucket" "aggregated" {
  bucket = "${var.project_name}-${var.environment}-aggregated"
}
