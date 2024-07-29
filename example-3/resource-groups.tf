resource "kubernetes_namespace" "flixtube" {
  metadata {
    name = var.app_name
  }
}
