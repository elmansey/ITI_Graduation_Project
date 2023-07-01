resource "kubernetes_cluster_role" "jenkins-Cluster-Role" {
  metadata {
    name = "jenkins-Cluster-Role"
  }

  rule {
    api_groups = ["apps", ""]
    resources  = ["deployments", "services"]
    verbs      = ["get", "list", "watch", "create", "update", "patch", "delete"]
  }
  rule {
    api_groups = [""]
    resources  = ["services","secrets","configmaps"]
    verbs      = ["get", "list", "watch", "create", "update", "patch", "delete"]
  }
}

resource "kubernetes_cluster_role_binding" "jenkins-Cluster-RoleBinding" {
  metadata {
    name = "jenkins-Cluster-RoleBinding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = kubernetes_cluster_role.jenkins-Cluster-Role.metadata.0.name
  }
  subject {
    kind      = "ServiceAccount"
    name      = kubernetes_service_account.jenkins-identity.metadata.0.name
    namespace = kubernetes_namespace.tools.metadata.0.name
  }
}