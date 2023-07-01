resource "kubernetes_deployment" "mysql" {
  metadata {
    name = "mysql"
    namespace = "${kubernetes_namespace.dev.metadata.0.name}"    
    labels = {
      app = "mysql"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "mysql"
      }
    }
    template {
      metadata {
        labels = {
          app = "mysql"
        }
      }
      spec {
        container {
          image = "mysql:5.6"
          name  = "mysql"

          port {
            container_port = 3306
          }
          env {
            name = "MYSQL_ROOT_PASSWORD"
            value_from {
              secret_key_ref {
                name = kubernetes_secret.mysql-secret.metadata.0.name
                key = "password"
              }
            }
            
          }
        }
      }
    }
  }
}
