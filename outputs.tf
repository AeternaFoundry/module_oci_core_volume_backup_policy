output "core_volume_backup_policies_id" {
  description = "Map of id values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no id are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_volume_backup_policies_compartment_id" {
  description = "Map of compartment_id values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_volume_backup_policies_defined_tags" {
  description = "Map of defined_tags values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_volume_backup_policies_destination_region" {
  description = "Map of destination_region values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no destination_region are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.destination_region if v.destination_region != null && length(v.destination_region) > 0 }
}
output "core_volume_backup_policies_display_name" {
  description = "Map of display_name values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no display_name are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_volume_backup_policies_freeform_tags" {
  description = "Map of freeform_tags values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_volume_backup_policies_schedules" {
  description = "Map of schedules values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no schedules are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.schedules if v.schedules != null && length(v.schedules) > 0 }
}
output "core_volume_backup_policies_time_created" {
  description = "Map of time_created values across all core_volume_backup_policies, keyed the same as var.core_volume_backup_policies except keys with no time_created are omitted"
  value       = { for k, v in oci_core_volume_backup_policy.core_volume_backup_policies : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

