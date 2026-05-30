module "rg" {
  source = "../../modules/resource_group"
  rgs    = var.rgs
}

module "acr" {
  source     = "../../modules/acr"
  acrs       = var.acrs
  depends_on = [module.rg]
}

module "aks" {
  source     = "../../modules/aks"
  aks        = var.aks
  depends_on = [module.rg]
}
