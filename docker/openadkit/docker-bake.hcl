group "default" {
  targets = ["perception-localization", "planning-control", "simulator", "visualizer"]
}

// For docker/metadata-action
target "docker-metadata-action-perception-localization" {}
target "docker-metadata-action-planning-control" {}
target "docker-metadata-action-visualizer" {}
target "docker-metadata-action-simulator" {}

// Autoware openadkit modules
target "perception-localization" {
  inherits = ["docker-metadata-action-perception-localization"]
  dockerfile = "docker/openadkit/modules/perception-localization/Dockerfile"
  target = "perception-localization"
}

target "planning-control" {
  inherits = ["docker-metadata-action-planning-control"]
  dockerfile = "docker/openadkit/modules/planning-control/Dockerfile"
  target = "planning-control"
}

target "visualizer" {
  inherits = ["docker-metadata-action-visualizer"]
  dockerfile = "docker/openadkit/modules/visualizer/Dockerfile"
  target = "visualizer"
}

target "simulator" {
  inherits = ["docker-metadata-action-simulator"]
  dockerfile = "docker/openadkit/modules/simulator/Dockerfile"
  target = "simulator"
}
