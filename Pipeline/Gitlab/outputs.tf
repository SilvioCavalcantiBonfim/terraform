output "azure_vm_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "aws_vm_ip" {
  value = aws_instance.vm.public_ip
}