resource "aws_codepipeline_webhook" "bar" {
  name            = "test-webhook-github-bar" 
  authentication  = "GITHUB_HMAC" 
  target_action   = "Source"
  target_pipeline = aws_codepipeline.example.name

  authentication_configuration {
    secret_token = local.webhook_secret
  }

  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/main"
  }
}

resource "github_repository_webhook" "test" {
  repository = var.github_repo

  configuration {
    url          = aws_codepipeline_webhook.bar.url
    content_type = "json"
    insecure_ssl = false
    secret       = local.webhook_secret
  }

  events = ["push"]
}