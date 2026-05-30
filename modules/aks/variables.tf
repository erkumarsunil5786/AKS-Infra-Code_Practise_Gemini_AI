variable "aks" {
  description = "Map of AKS cluster configurations"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    kubernetes_version  = optional(string, "1.27")
    node_count          = optional(number, 1)
    vm_size             = optional(string, "Standard_DS2_v2")
    network_profile = optional(object({
      network_plugin    = string
      load_balancer_sku = optional(string, "standard")
      network_policy    = optional(string)
    }))
    tags = optional(map(string))
  }))
}
