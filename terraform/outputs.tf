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

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.k8s.kube_config_raw
  sensitive = true
}
