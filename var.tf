variable "rg_name" {
  type        = any
  default     = "Harsh_terraform"
  description = "The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
}
variable "rg_location" {
  type        = string
  # default     = "North Europe"
  description = "The location/region where the virtual network is created."
}
