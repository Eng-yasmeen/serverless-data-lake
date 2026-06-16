resource "aws_glue_catalog_database" "datalake_db" {
  name = "${var.project_name}_${var.environment}_db"
}

resource "aws_iam_role" "glue_role" {
  name = "${var.project_name}-glue-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "glue.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "glue_policy" {
  role       = aws_iam_role.glue_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
}

resource "aws_glue_crawler" "raw_crawler" {
  name          = "${var.project_name}-${var.environment}-raw-crawler"
  database_name = aws_glue_catalog_database.datalake_db.name
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${var.raw_bucket}/"
  }

  depends_on = [aws_iam_role_policy_attachment.glue_policy]
}
