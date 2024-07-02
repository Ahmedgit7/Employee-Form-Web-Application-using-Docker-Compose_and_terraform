resource "aws_codebuild_project" "employee_codebuild" {
  name          = var.employee_codebuild
  description   = "Example build project"
  service_role  = aws_iam_role.codebuild_role.arn
  build_timeout = "5"

  artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type        = var.compute_type
    image               = var.codebuild_image
    type                = var.codebuild_environment_type
    privileged_mode     = false
    environment_variable {
      name  = "test"
      value = "true"
    }
  }

  source {
    type      = "CODEPIPELINE"
    buildspec = "buildspec.yml"
  }
}