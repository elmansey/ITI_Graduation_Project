resource "kubernetes_service" "mysql-svc" {
  metadata {
    name = "mysql-svc"
    namespace = "${kubernetes_namespace.dev.metadata.0.name}"  
  }
  spec {
    selector = {
      app = kubernetes_deployment.mysql.spec.0.template.0.metadata[0].labels.app
    }
    port {
      port        = 3306
      target_port = 3306
    }
  }
}
