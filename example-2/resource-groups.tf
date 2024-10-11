resource "kubernetes_namespace" "flixtube" {
  depends_on = [null_resource.enable_registry]

  metadata {
    name = "flixtube"
  }
}
