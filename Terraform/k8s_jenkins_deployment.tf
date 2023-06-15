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
        container {
          image = "jenkins/jenkins:lts"
          name  = "jenkins-container"

          port {
            container_port = 8080
          }
        }
      }
    }
  }
}
