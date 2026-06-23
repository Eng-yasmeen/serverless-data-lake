# Serverless Data Lake on AWS

## Project Overview

This project implements a Serverless Data Lake architecture on AWS using Infrastructure as Code (Terraform).

The platform provides:

* Data ingestion using Amazon Kinesis Firehose
* Storage using Amazon S3
* Metadata cataloging using AWS Glue
* Analytics using Amazon Athena
* Monitoring and alerting using Amazon CloudWatch and Amazon SNS
* CI/CD automation using GitHub Actions

---

## Architecture

Data Flow:

Data Source
→ Kinesis Firehose
→ S3 Raw Bucket
→ AWS Glue Crawler
→ Glue Data Catalog
→ Amazon Athena
→ QuickSight Dashboard

Monitoring Flow:

CloudWatch
→ SNS Alerts

---

## AWS Services Used

* Amazon S3
* AWS Glue
* Amazon Athena
* Amazon Kinesis Firehose
* Amazon CloudWatch
* Amazon SNS
* AWS IAM
* GitHub Actions
* Terraform

---

## Terraform Modules

### S3 Module

Creates:

* Raw Bucket
* Curated Bucket
* Aggregated Bucket
* Athena Results Bucket

### Glue Module

Creates:

* Glue Database
* Glue Crawler
* Glue IAM Role

### Firehose Module

Creates:

* Firehose Delivery Stream
* Firehose IAM Role

### Athena Module

Creates:

* Athena Workgroup

### Monitoring Module

Creates:

* CloudWatch Log Group
* CloudWatch Alarm
* SNS Topic

---

## Deployment

Initialize Terraform:

terraform init

Validate Configuration:

terraform validate

Generate Execution Plan:

terraform plan

Deploy Infrastructure:

terraform apply

---

## CI/CD Pipeline

GitHub Actions automatically performs:

* Terraform Init
* Terraform Format Check
* Terraform Validate
* Terraform Plan

on every push to the main branch.

---

## Team Contribution

Person 1:

* S3 Storage Layer

Person 2:

* Athena and QuickSight Analytics

Person 3:

* Terraform Infrastructure
* Glue
* Firehose
* CloudWatch
* SNS
* GitHub Actions

---

## Author

Serverless Data Lake Project Team

