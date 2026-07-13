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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

