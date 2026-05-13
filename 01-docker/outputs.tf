output "container_name" {
  description = "Nom du container créé"
  value       = docker_container.web.name
}

output "url" {
  description = "URL pour accéder à nginx"
  value       = "http://localhost:${docker_container.web.ports[0].external}"
}