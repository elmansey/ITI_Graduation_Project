resource "kubernetes_deployment" "nexus" {
  metadata {
    name = "nexus-deployment"
    namespace = "${kubernetes_namespace.tools.metadata.0.name}"    
    labels = {
      app = "nexus"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "nexus"
      }
    }
    template {
      metadata {
        labels = {
          app = "nexus"
        }
      }
      spec {
        container {
          image = "sonatype/nexus3"
          name  = "nexus-container"

          port {
            container_port = 8081
          }
          port {
            container_port = 5000
          }
        }
      }
    }
  }
}
