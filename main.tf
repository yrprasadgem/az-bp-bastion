###############
##Azure Bastion
###############
module "azure_bastion" {
  source = "git::git@bitbucket.org:contournetworkdelivery/azure-bastion-module.git?ref=master"
  public_ip_name_bastion = var.public_ip_name_bastion
  location = var.azure_regions_map["az1"]
  resource_group_name = var.resource_group_name
  public_ip_allocation_method = var.public_ip_allocation_method
  public_ip_sku = var.public_ip_sku
  tags = var.resource_tags
  ##Bastion
  azure_bastion_service_name = var.azure_bastion_service_name
  bastion_subnet_id = "/subscriptions/b3f72110-ee35-4c84-ab6a-5189f3744372/resourceGroups/rg-prd-aksapp01/providers/Microsoft.Network/virtualNetworks/vnet-prd-aksapp01/subnets/AzureBastionSubnet"
}