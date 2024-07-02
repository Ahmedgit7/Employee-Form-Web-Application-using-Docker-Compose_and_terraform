# backend.tf
terraform {
  backend "s3" {
    bucket         = "testing-bucket75684"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform_locks"

    encrypt        = true
    # kms_key_id     = "your-kms-key-id-if-needed"  # Uncomment if using a KMS key for encryption
  }
}
