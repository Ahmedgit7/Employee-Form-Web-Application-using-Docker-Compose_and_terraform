variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "codebuild_role" {
  type = string
}

variable "codebuild_policy" {
  type = string
}

variable "employee_codebuild" {
  type = string
}

variable "codepipeline_role" {
  type = string
}

variable "codepipeline_policy" {
  type = string
}

variable "aws_codepipeline" {
  type = string
}

variable "compute_type" {
  description = "The compute type for the CodeBuild environment."
  type        = string
}

variable "codebuild_image" {
  description = "The Docker image for the CodeBuild environment."
  type        = string
}

variable "codebuild_environment_type" {
  description = "The type of build environment to use."
  type        = string
}

variable "codepipeline_bucket_name" {
  description = "The name of the S3 bucket for CodePipeline artifacts"
  type        = string
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "github_branch" {
  description = "GitHub branch name"
  type        = string
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

variable "private_route_cidr_block" {
  description = "CIDR block for the private route"
  type        = string
}

variable "public_route_cidr_block" {
  description = "CIDR block for the public route"
  type        = string
}

variable "private_subnet_cidr_block_1a" {
  description = "CIDR block for private subnet in ap-south-1a"
  type        = string
}

variable "private_subnet_cidr_block_1b" {
  description = "CIDR block for private subnet in ap-south-1b"
  type        = string
}

variable "public_subnet_cidr_block_1a" {
  description = "CIDR block for public subnet in ap-south-1a"
  type        = string
}

variable "public_subnet_cidr_block_1b" {
  description = "CIDR block for public subnet in ap-south-1b"
  type        = string
}

variable "availability_zone_1a" {
  description = "Availability zone for subnet in ap-south-1a"
  type        = string
}

variable "availability_zone_1b" {
  description = "Availability zone for subnet in ap-south-1b"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cluster_name" {
  type = string
}

variable "region" {
  type = string
}

variable "node_instance_type" {
  type = string
}

variable "desired_capacity" {
  type = number
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "eks_addons" {
  type = map(string)
}