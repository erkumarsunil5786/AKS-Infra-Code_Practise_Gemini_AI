output "clusters" {
  description = "Map of AKS clusters created"
  value       = azurerm_kubernetes_cluster.this
  sensitive   = true
}
