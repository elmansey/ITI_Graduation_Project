resource "kubernetes_persistent_volume" "jenkins_pv" {
  metadata {
    name = "jenkins-pv"
  }
  spec {
    capacity = {
      storage = "2000Mi"
    }
    storage_class_name = "standard"
    access_modes = ["ReadWriteMany"]
    persistent_volume_source {
      host_path {
        path = "/var/jenkins-volume"
      }
    }
  }
}

resource "kubernetes_persistent_volume_claim" "jenkins_pvc" {
  metadata {
    name = "jenkins-pvc"
    namespace = "${kubernetes_namespace.tools.metadata.0.name}" 
  }

  spec {
    storage_class_name = ""
    access_modes = ["ReadWriteMany"]

    resources {
      requests = {
        storage = "2000Mi"
      }
    }
  }
}