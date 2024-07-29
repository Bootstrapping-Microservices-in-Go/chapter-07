resource "null_resource" "container_registry" {
  provisioner "local-exec" {
    command = "minikube image load video-streaming:1"
  }
}
