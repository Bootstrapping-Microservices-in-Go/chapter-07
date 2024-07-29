resource "kubernetes_deployment" "flixtube" {
  metadata {
    name = "flixtube"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "video-streaming"
      }
    }

    template {
      metadata {
        labels = {
          app = "video-streaming"
        }
      }

      spec {
        container {
          name              = "video-streaming"
          image             = "video-streaming:1"
          image_pull_policy = "IfNotPresent"
          env {
            name  = "PORT"
            value = "4000"
          }

        }
      }
    }

  }
}
