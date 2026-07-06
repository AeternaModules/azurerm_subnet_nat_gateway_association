variable "subnet_nat_gateway_associations" {
  description = <<EOT
Map of subnet_nat_gateway_associations, attributes below
Required:
    - nat_gateway_id
    - subnet_id
EOT

  type = map(object({
    nat_gateway_id = string
    subnet_id      = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_subnet_nat_gateway_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: nat_gateway_id
  #   source:    [from natgateways.ValidateNatGatewayID] !ok
  # path: nat_gateway_id
  #   source:    [from natgateways.ValidateNatGatewayID] err != nil
}

