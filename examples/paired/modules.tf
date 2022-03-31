module "azure_region" {
  source  = "claranet/regions/azurerm"
  version = "x.x.x"

  azure_region = "eu-west"
}

output "location_paired" {
  description = "Azure paired region in standard format"
  value       = module.azure_region.location_paired.location
}

output "location_paired_short" {
  description = "Azure paired region in short format for resource naming purpose"
  value       = module.azure_region.location_paired.location_short
}
