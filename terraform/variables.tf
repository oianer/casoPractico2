# Variables del despliegue. Especificamos el nombre del resource group, su localización (sur de UK), el nombre de la red, de la subred, de la máquina virtual.
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

variable "vm_name" {
  default = "oruizmo_vm"
}
