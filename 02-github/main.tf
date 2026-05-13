resource "github_repository" "app" {
  name        = "${var.project_name}-demo"
  description = "Dépôt géré par Terraform - DevOps S8"
  visibility  = "public"
  has_issues  = true
  auto_init   = true
  topics = ["terraform", "devops", "s8"]
}

resource "github_actions_secret" "db_url" {
  repository      = github_repository.app.name
  secret_name     = "DATABASE_URL"
  plaintext_value = var.db_url
}

resource "github_repository" "docs" {
  name        = "${var.project_name}-docs"
  description = "Documentation - géré par Terraform"
  visibility  = "public"
  has_issues  = false
  has_wiki    = true
  auto_init   = true
  topics      = ["terraform", "devops"]
}