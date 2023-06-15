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
      node_port   = 30011
      port        = 8081
      target_port = 8081
    }

    type = "NodePort"
  }
}
