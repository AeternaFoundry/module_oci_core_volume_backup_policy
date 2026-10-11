resource "oci_core_volume_backup_policy" "core_volume_backup_policies" {
  for_each = var.core_volume_backup_policies

  compartment_id     = each.value.compartment_id
  defined_tags       = each.value.defined_tags
  destination_region = each.value.destination_region
  display_name       = each.value.display_name
  freeform_tags      = each.value.freeform_tags

  dynamic "schedules" {
    for_each = each.value.schedules != null ? each.value.schedules : []
    content {
      backup_type                 = schedules.value.backup_type
      day_of_month                = schedules.value.day_of_month
      day_of_week                 = schedules.value.day_of_week
      hour_of_day                 = schedules.value.hour_of_day
      is_prevent_deletion_enabled = schedules.value.is_prevent_deletion_enabled
      is_retention_lock_enabled   = schedules.value.is_retention_lock_enabled
      month                       = schedules.value.month
      offset_seconds              = schedules.value.offset_seconds
      offset_type                 = schedules.value.offset_type
      period                      = schedules.value.period
      dynamic "retention_period" {
        for_each = schedules.value.retention_period != null ? [schedules.value.retention_period] : []
        content {
          retention_time_amount = retention_period.value.retention_time_amount
          retention_time_unit   = retention_period.value.retention_time_unit
        }
      }
      retention_seconds = schedules.value.retention_seconds
      time_zone         = schedules.value.time_zone
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

