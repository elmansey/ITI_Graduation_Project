resource "kubernetes_service" "jenkins_svc" {
  metadata {
    name = "jenkins-svc"
    namespace = "${kubernetes_namespace.tools.metadata.0.name}"  
  }
  spec {
    selector = {
      app = kubernetes_deployment.jenkins.spec.0.template.0.metadata[0].labels.app
    }
    port {
      port        = 8080
      target_port = 8080
    }
  }
}
