resource "kubernetes_namespace" "this" {
  metadata {
    name = var.name
    annotations = var.annotations
    labels = var.labels
  }
}

