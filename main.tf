resource "aws_appintegrations_event_integration" "appintegrations_event_integrations" {
  for_each = var.appintegrations_event_integrations

  eventbridge_bus = each.value.eventbridge_bus
  name            = each.value.name
  description     = each.value.description
  region          = each.value.region
  tags            = each.value.tags
  tags_all        = each.value.tags_all

  event_filter {
    source = each.value.event_filter.source
  }
}

