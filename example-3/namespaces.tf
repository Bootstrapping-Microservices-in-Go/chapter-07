resource "kubernetes_namespace" "flixtube" {
  metadata {
    name = "flixtube"
  }
}
