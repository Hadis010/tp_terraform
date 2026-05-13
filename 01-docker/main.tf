resource "docker_image" "nginx" {
  name = var.nginx_image
}

resource "docker_network" "app" {
  name = "app-network"
}

resource "docker_container" "web" {
  name  = "${var.project_name}-web"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.host_port
  }

  networks_advanced {
    name = docker_network.app.name
  }
}

resource "docker_image" "redis" {
  name = "redis:alpine"
}

resource "docker_container" "cache" {
  name  = "${var.project_name}-cache"
  image = docker_image.redis.image_id

  networks_advanced {
    name = docker_network.app.name
  }
}