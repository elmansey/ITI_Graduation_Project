resource "kubernetes_namespace" "dev" {
  metadata {
    name = "dev"
  }
}

resource "kubernetes_namespace" "tools" {
  metadata {
    name = "tools"
  }
}
