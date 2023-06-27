# resource "kubernetes_ingress" "app_ingress" {
#   metadata {
#     name = "app-ingress"
#     namespace = "${kubernetes_namespace.tools.metadata.0.name}"
#     annotations = {
#       "kubernetes.io/ingress.class" = "nginx"
#     }ku
#   }

#   spec {
#     rule {
#       host = "minikube.local"
#       http {
#         path {
#           path = "/nexus"

#           backend {
#             service_name = kubernetes_service.nexus_svc.metadata[0].name
#             service_port = kubernetes_service.nexus_svc.spec[0].port[0].port
#           }
#         }
#       }
#     }
#   }
# }

