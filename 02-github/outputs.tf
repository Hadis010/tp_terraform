output "repository_url" {
  description = "URL du dépôt créé"
  value       = github_repository.app.html_url
}

output "repository_name" {
  description = "Nom du dépôt"
  value       = github_repository.app.name
}