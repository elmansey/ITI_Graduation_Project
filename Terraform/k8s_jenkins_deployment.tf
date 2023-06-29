resource "kubernetes_service_account" "jenkins-identity" {
  metadata {
    name = "jenkins-identity"
    namespace = "${kubernetes_namespace.tools.metadata.0.name}" 
  }
}

resource "kubernetes_deployment" "jenkins" {
  metadata {
    name = "jenkins-deployment"
    namespace = "${kubernetes_namespace.tools.metadata.0.name}"  
    labels = {
      app = "jenkins"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "jenkins"
      }
    }
    template {
      metadata {
        labels = {
          app = "jenkins"
        }
      }
      spec {
        service_account_name = kubernetes_service_account.jenkins-identity.metadata.0.name
        container {
          image = "elnabawy/jenkins-docker-kubectl"
          name  = "jenkins-container"

          port {
            container_port = 8080
          }
          volume_mount {
            mount_path = "/var/run/docker.sock"
            name = "docker-deamon"
          }
        }
        volume {
          name = "docker-deamon"
          host_path {
            path = "/var/run/docker.sock"
          }
        }
      }
    }
  }
}
