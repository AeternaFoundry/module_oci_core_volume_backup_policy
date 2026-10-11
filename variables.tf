variable "core_volume_backup_policies" {
  description = <<EOT
Map of core_volume_backup_policies, attributes below
Required:
    - compartment_id
Optional:
    - defined_tags
    - destination_region
    - display_name
    - freeform_tags
    - schedules (block):
        - backup_type (required)
        - day_of_month (optional)
        - day_of_week (optional)
        - hour_of_day (optional)
        - is_prevent_deletion_enabled (optional)
        - is_retention_lock_enabled (optional)
        - month (optional)
        - offset_seconds (optional)
        - offset_type (optional)
        - period (required)
        - retention_period (optional, block):
            - retention_time_amount (required)
            - retention_time_unit (required)
        - retention_seconds (required)
        - time_zone (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id     = string
    defined_tags       = optional(map(string))
    destination_region = optional(string)
    display_name       = optional(string)
    freeform_tags      = optional(map(string))
    schedules = optional(list(object({
      backup_type                 = string
      day_of_month                = optional(number)
      day_of_week                 = optional(string)
      hour_of_day                 = optional(number)
      is_prevent_deletion_enabled = optional(bool)
      is_retention_lock_enabled   = optional(bool)
      month                       = optional(string)
      offset_seconds              = optional(number)
      offset_type                 = optional(string)
      period                      = string
      retention_period = optional(object({
        retention_time_amount = number
        retention_time_unit   = string
      }))
      retention_seconds = number
      time_zone         = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

