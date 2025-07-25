resource "helm_release" "argo-cd" {
  name       = var.name
  namespace  = var.namespace
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = var.chart_version
  create_namespace = true
  values = [
    file("${path.module}/values.yaml")
  ]
}

resource "helm_release" "argo-apps" {
  name             = "${var.name}-apps"
  chart            = "${path.module}/charts"
  namespace        = var.namespace
  create_namespace = false

  depends_on = [helm_release.argo-cd]
  values     = [file("${path.module}/charts/values.yaml")]
}