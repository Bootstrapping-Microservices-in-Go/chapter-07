resource "null_resource" "enable_registry" {
  provisioner "local-exec" {
    command = "minikube addons enable registry"

    environment = {
      MINIKUBE_PROFILE = var.app_name
    }
  }
}
