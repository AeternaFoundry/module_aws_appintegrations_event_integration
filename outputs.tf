output "appintegrations_event_integrations_id" {
  description = "Map of id values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appintegrations_event_integrations_arn" {
  description = "Map of arn values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appintegrations_event_integrations_description" {
  description = "Map of description values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appintegrations_event_integrations_event_filter" {
  description = "Map of event_filter values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => one(v.event_filter) if v.event_filter != null && length(v.event_filter) > 0 }
}
output "appintegrations_event_integrations_eventbridge_bus" {
  description = "Map of eventbridge_bus values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.eventbridge_bus if v.eventbridge_bus != null && length(v.eventbridge_bus) > 0 }
}
output "appintegrations_event_integrations_name" {
  description = "Map of name values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appintegrations_event_integrations_region" {
  description = "Map of region values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appintegrations_event_integrations_tags" {
  description = "Map of tags values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appintegrations_event_integrations_tags_all" {
  description = "Map of tags_all values across all appintegrations_event_integrations, keyed the same as var.appintegrations_event_integrations"
  value       = { for k, v in aws_appintegrations_event_integration.appintegrations_event_integrations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

