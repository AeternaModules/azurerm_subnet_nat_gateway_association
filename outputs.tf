output "subnet_nat_gateway_associations_id" {
  description = "Map of id values across all subnet_nat_gateway_associations, keyed the same as var.subnet_nat_gateway_associations"
  value       = { for k, v in azurerm_subnet_nat_gateway_association.subnet_nat_gateway_associations : k => v.id }
}
output "subnet_nat_gateway_associations_nat_gateway_id" {
  description = "Map of nat_gateway_id values across all subnet_nat_gateway_associations, keyed the same as var.subnet_nat_gateway_associations"
  value       = { for k, v in azurerm_subnet_nat_gateway_association.subnet_nat_gateway_associations : k => v.nat_gateway_id }
}
output "subnet_nat_gateway_associations_subnet_id" {
  description = "Map of subnet_id values across all subnet_nat_gateway_associations, keyed the same as var.subnet_nat_gateway_associations"
  value       = { for k, v in azurerm_subnet_nat_gateway_association.subnet_nat_gateway_associations : k => v.subnet_id }
}

