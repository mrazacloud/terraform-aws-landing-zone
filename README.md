# Secure Multi-Region Infrastructure Landing Zone via Terraform

A production-grade Infrastructure-as-Code (IaC) architectural layout that deploys a highly secure, multi-region enterprise baseline across Amazon Web Services (AWS) using modular layouts, strict multi-subnet segmentation boundaries, and declarative encryption governance controls.

## 🚀 Architectural Core Features
- **Dual-Region High-Availability Orchestration (`main.tf` & `provider.tf`)**: Uses provider-aliasing methods to automatically provision parallel systems simultaneously across `us-east-1` (Primary Production) and `us-west-2` (Disaster Recovery Tier).
- **Reusable Custom Networking Component Module (`modules/vpc/`)**: Features standalone, parametrized parameters creating isolated public public tier subnets alongside strict private application subnets.
- **Enterprise Network Hardening Control (`modules/vpc/main.tf`)**: Deploys custom Network Access Control Lists (NACLs) explicitly regulating intra-VPC tracking streams and locking down unauthorized parameter endpoints.
- **HIPAA/SOC2 Cryptography Auditing Compliance**: Establishes global data storage log structures using Amazon S3 buckets backed by mandatory, enforced server-side **AES-256 encryption criteria**.

## 🛠️ Technical Stack
- **Infrastructure as Code Framework**: Terraform v1.5.0+ (HashiCorp AWS Provider v5.0)
- **Target Environments**: AWS Core (VPC, Subnets, NACLs, S3 Secure Storage Elements)
- **DevOps Methodologies**: Structural Modular Engineering, Disaster Recovery (DR) Orchestration, Least-Privilege IAM Boundaries

## ⚙️ Quick Local Initialization & Syntax Dry-Run Check

1. Clone this project repository layout:
   ```bash
   git clone https://github.com
   cd terraform-aws-landing-zone
   ```
2. Initialize the HashiCorp engine modules and source dependencies:
   ```bash
   terraform init
   ```
3. Run a structural validation layout check to audit syntax rules:
   ```bash
   terraform validate
   ```
4. Generate a local schematic dry-run evaluation plan mapping the architecture layout:
   ```bash
   terraform plan
   ```
