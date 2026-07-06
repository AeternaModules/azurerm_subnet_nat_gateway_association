output "subnet_nat_gateway_associations" {
  description = "All subnet_nat_gateway_association resources"
  value       = azurerm_subnet_nat_gateway_association.subnet_nat_gateway_associations
}
output "subnet_nat_gateway_associations_nat_gateway_id" {
  description = "List of nat_gateway_id values across all subnet_nat_gateway_associations"
  value       = [for k, v in azurerm_subnet_nat_gateway_association.subnet_nat_gateway_associations : v.nat_gateway_id]
}
output "subnet_nat_gateway_associations_subnet_id" {
  description = "List of subnet_id values across all subnet_nat_gateway_associations"
  value       = [for k, v in azurerm_subnet_nat_gateway_association.subnet_nat_gateway_associations : v.subnet_id]
}

