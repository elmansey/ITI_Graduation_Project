resource "kubernetes_service" "nexus_svc" {
  metadata {
    name = "nexus-svc"
    namespace = "${kubernetes_namespace.tools.metadata.0.name}"    
  }
  spec {
    selector = {
      app = kubernetes_deployment.nexus.spec.0.template.0.metadata[0].labels.app
    }
    port {
      port        = 8081
      target_port = 8081
      name = "http"
    }
  }
}

resource "kubernetes_service" "nexus_svc_repo" {
  metadata {
    name = "nexus-svc-repo"
    namespace = "${kubernetes_namespace.tools.metadata.0.name}"    
  }
  spec {
    selector = {
      app = kubernetes_deployment.nexus.spec.0.template.0.metadata[0].labels.app
    }
    port {
      port = 5000
      target_port = 5000
    }
  }
}