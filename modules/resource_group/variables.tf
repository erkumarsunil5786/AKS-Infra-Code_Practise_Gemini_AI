variable "rgs" {
  description = "Map of resource group configurations"
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string))
  }))
}
