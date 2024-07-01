variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"  # Change to your desired region
}

variable "codepipeline_bucket_name" {
  description = "The name of the S3 bucket for CodePipeline artifacts"
  type        = string
  default     = "testing-codepipe-bucket"  # Change to a unique bucket name
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
  default     = "Ahmedgit7"  # Replace with your GitHub username or organization
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "Employee-Form-Web-Application-using-Docker-Compose"  # Replace with your GitHub repository name
}

variable "github_branch" {
  description = "GitHub branch name"
  type        = string
  default     = "main"  # Replace with your branch name
}

variable "github_token" {
  description = "GitHub OAuth token"
  type        = string
  sensitive   = true
}

variable "webhook_secret" {
  description = "Github Webhook Secret"
  type = string
  sensitive = true
}
