terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Primary Region Configuration
provider "aws" {
  region = "us-east-1"
  # Standard deployment parameters—values are fed securely via environmental secrets
}

# Secondary Disaster Recovery Region Configuration via Provider Aliasing
provider "aws" {
  alias  = "dr_region"
  region = "us-west-2"
}

