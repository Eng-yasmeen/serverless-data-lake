output "glue_database_name" {
  value = aws_glue_catalog_database.datalake_db.name
}

output "glue_role_arn" {
  value = aws_iam_role.glue_role.arn
}
