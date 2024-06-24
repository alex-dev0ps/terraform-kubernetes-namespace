resource "kubernetes_namespace" "this" {
  metadata {
    name = var.name
    annotations = var.annotations
    labels = var.labels
  }
}

resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "pod-quota"
    namespace = kubernetes_namespace.this.metadata.0.name
  }
  spec {
    hard = {
      pods = var.pod_limit

    }
    scopes = ["BestEffort"]
  }
}

variable pod_limit {
    description = "Max pods"
    default = 100
}