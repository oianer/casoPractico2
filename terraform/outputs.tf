#Elementos que se devuelven tras el despliegue: id de resource group, id máquina virtual, ip máquina virtual, passwords administrador ACR
output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "vm_pip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "acr_pass1" {
  value = azurerm_container_registry.acr.admin_password
}
