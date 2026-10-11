resource "google_agent_registry_service" "agent_registry_services" {
  for_each = var.agent_registry_services

  location        = each.value.location
  service_id      = each.value.service_id
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  project         = each.value.project

  dynamic "agent_spec" {
    for_each = each.value.agent_spec != null ? [each.value.agent_spec] : []
    content {
      content = agent_spec.value.content
      type    = agent_spec.value.type
    }
  }

  dynamic "endpoint_spec" {
    for_each = each.value.endpoint_spec != null ? [each.value.endpoint_spec] : []
    content {
      type = endpoint_spec.value.type
    }
  }

  dynamic "interfaces" {
    for_each = each.value.interfaces != null ? each.value.interfaces : []
    content {
      protocol_binding = interfaces.value.protocol_binding
      url              = interfaces.value.url
    }
  }

  dynamic "mcp_server_spec" {
    for_each = each.value.mcp_server_spec != null ? [each.value.mcp_server_spec] : []
    content {
      content = mcp_server_spec.value.content
      type    = mcp_server_spec.value.type
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

