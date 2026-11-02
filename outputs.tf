output "primary_vpc_id" {
  value = module.primary_network.vpc_id
}

output "dr_vpc_id" {
  value = module.dr_network.vpc_id
}

output "audit_logs_bucket_arn" {
  value = aws_s3_bucket.audit_logs.arn
}
