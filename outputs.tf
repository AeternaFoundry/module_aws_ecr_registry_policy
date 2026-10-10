output "ecr_registry_policies_id" {
  description = "Map of id values across all ecr_registry_policies, keyed the same as var.ecr_registry_policies"
  value       = { for k, v in aws_ecr_registry_policy.ecr_registry_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecr_registry_policies_policy" {
  description = "Map of policy values across all ecr_registry_policies, keyed the same as var.ecr_registry_policies"
  value       = { for k, v in aws_ecr_registry_policy.ecr_registry_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "ecr_registry_policies_region" {
  description = "Map of region values across all ecr_registry_policies, keyed the same as var.ecr_registry_policies"
  value       = { for k, v in aws_ecr_registry_policy.ecr_registry_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecr_registry_policies_registry_id" {
  description = "Map of registry_id values across all ecr_registry_policies, keyed the same as var.ecr_registry_policies"
  value       = { for k, v in aws_ecr_registry_policy.ecr_registry_policies : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}

