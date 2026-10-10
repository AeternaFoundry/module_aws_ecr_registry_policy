variable "ecr_registry_policies" {
  description = <<EOT
Map of ecr_registry_policies, attributes below
Required:
    - policy
Optional:
    - region
EOT

  type = map(object({
    policy = string
    region = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

