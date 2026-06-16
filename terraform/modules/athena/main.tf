resource "aws_athena_workgroup" "main" {
  name = "${var.project_name}-${var.environment}-wg"

  configuration {
    enforce_workgroup_configuration = true

    result_configuration {
      output_location = "s3://${var.project_name}-${var.environment}-athena-results/"
    }
  }
}
