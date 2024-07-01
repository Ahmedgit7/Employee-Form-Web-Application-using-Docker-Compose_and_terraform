output "codepipeline_bucket_arn" {
  description = "The ARN of the S3 bucket used for CodePipeline artifacts"
  value       = aws_s3_bucket.codepipeline_bucket.arn
}

output "codepipeline_bucket_name" {
  description = "The name of the S3 bucket used for CodePipeline artifacts"
  value       = aws_s3_bucket.codepipeline_bucket.bucket
}

output "codepipeline_role_arn" {
  description = "The ARN of the IAM role used by CodePipeline"
  value       = aws_iam_role.codepipeline_role.arn
}

output "codebuild_role_arn" {
  description = "The ARN of the IAM role used by CodeBuild"
  value       = aws_iam_role.codebuild_role.arn
}

output "codepipeline_id" {
  description = "The ID of the CodePipeline"
  value       = aws_codepipeline.example.id
}

output "codepipeline_name" {
  description = "The name of the CodePipeline"
  value       = aws_codepipeline.example.name
}

output "codebuild_project_name" {
  description = "The name of the CodeBuild project"
  value       = aws_codebuild_project.example.name
}

output "codepipeline_webhook_url" {
  description = "The URL of the CodePipeline webhook"
  value       = aws_codepipeline_webhook.bar.url
}

output "github_webhook_id" {
  description = "The ID of the GitHub webhook"
  value       = github_repository_webhook.test.id
}
