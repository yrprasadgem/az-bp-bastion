variable "resource_group_name"{
  type     = string
  default  = ""
}

variable "azure_regions_map" {
  type = map(any)

  default = {
    az1 = "southeast asia"
    az2 = "east asia"
  }
}

variable "resource_tags" {
  type = map(any)

  default = {
    tag_business_unit = "contour-sg"
    tag_env           = "dev"
    tag_app_name      = "azure bastion service"
    tag_app_owner     = "luke@contour.network"
  }
}

variable "location_map" {
  type = map(any)

  default = {
    "region1" = "southeast asia"
    "region2" = "east asia"
  }
}

variable "public_ip_name_bastion" {
  type  = string
}

variable "public_ip_allocation_method" {
  type = string
}

variable "public_ip_sku" {
  type = string
}

variable "azure_bastion_service_name" {
  type  = string
}