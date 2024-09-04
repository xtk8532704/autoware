group "default" {
  targets = ["base", "core-devel", "universe-devel", "universe"]
}

// For docker/metadata-action
target "docker-metadata-action-base" {}
target "docker-metadata-action-core-devel" {}
target "docker-metadata-action-universe-devel" {}
target "docker-metadata-action-universe" {}

target "base" {
  inherits = ["docker-metadata-action-base"]
  dockerfile = "docker/Dockerfile"
  target = "base"
}

target "autoware-core-devel" {
  inherits = ["docker-metadata-action-autoware-core-devel"]
  dockerfile = "docker/Dockerfile"
  target = "core-devel"
}

target "autoware-universe-devel" {
  inherits = ["docker-metadata-action-autoware-universe-devel"]
  dockerfile = "docker/Dockerfile"
  target = "universe-devel"
}

target "autoware-universe" {
  inherits = ["docker-metadata-action-autoware-universe"]
  dockerfile = "docker/Dockerfile"
  target = "universe"
}
