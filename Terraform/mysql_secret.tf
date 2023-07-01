resource "kubernetes_secret" "mysql-secret" {
  metadata {
    name = "mysql-secret"
    namespace = "${kubernetes_namespace.dev.metadata.0.name}"
  }

  type = "kubernetes.io/basic-auth"

  data = {
    password = "141011"
  }
}