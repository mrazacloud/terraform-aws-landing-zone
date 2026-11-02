# 1. Primary Operational Environment Infrastructure Deployment (us-east-1)
module "primary_network" {
  source              = "./modules/vpc"
  vpc_cidr            = "10.100.0.0/16"
  public_subnet_cidr  = "10.100.1.0/24"
  private_subnet_cidr = "10.100.2.0/24"
  availability_zone   = "us-east-1a"
  environment         = "production-primary"
}

# 2. Secondary Disaster Recovery Infrastructure Deployment (us-west-2 via Provider Aliasing)
module "dr_network" {
  source = "./modules/vpc"
  providers = {
    aws = aws.dr_region
  }
  vpc_cidr            = "10.200.0.0/16"
  public_subnet_cidr  = "10.200.1.0/24"
  private_subnet_cidr = "10.200.2.0/24"
  availability_zone   = "us-west-2a"
  environment         = "production-dr"
}

# 3. Global Secure Audit Logging S3 Bucket Configuration with Mandatory Enforced Encryption
resource "aws_s3_bucket" "audit_logs" {
  bucket        = "mraza-enterprise-audit-telemetry-logs-2026"
  force_destroy = true

  tags = {
    Name        = "Global-Audit-Logs"
    Compliance  = "HIPAA-SOC2"
    ManagedBy   = "Terraform"
  }
}

# Enforce Server-Side AES-256 Encryption Bounds on the Storage Layer
resource "aws_s3_bucket_server_side_encryption_configuration" "audit_encryption" {
  bucket = aws_s3_bucket.audit_logs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
