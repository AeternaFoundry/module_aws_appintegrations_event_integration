variable "appintegrations_event_integrations" {
  description = <<EOT
Map of appintegrations_event_integrations, attributes below
Required:
    - eventbridge_bus
    - name
    - event_filter (block):
        - source (required)
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    eventbridge_bus = string
    name            = string
    description     = optional(string)
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    event_filter = object({
      source = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.appintegrations_event_integrations : (
        can(regex("^[0-9A-Za-z\\/\\._\\-]{1,255}$", v.eventbridge_bus))
      )
    ])
    error_message = "should be not be more than 255 alphanumeric, forward slashes, dots, underscores, or hyphen characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

