variable "resource_group_name" {
  default = "oruizmo_cp2_rg"
}

variable "location_name" {
  default = "uksouth"
}

variable "network_name" {
  default = "vnet1"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "vm_specs" {
  type = object({
    count          = number
    basename       = string
    size           = string
    admin_username = string
    username       = string
    public_key      = string
  })

  sensitive = true

  default = {
    count          = 3
    basename       = "vm0"
    size           = "Standard_B1s"
    admin_username = "azureuser"
    username       = "azureuser"
    public_key     = "~/.ssh/id_rsa.pub"
  }
}