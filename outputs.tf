output "agent_registry_services_id" {
  description = "Map of id values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no id are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_registry_services_agent_spec" {
  description = "Map of agent_spec values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no agent_spec are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => one(v.agent_spec) if v.agent_spec != null && length(v.agent_spec) > 0 }
}
output "agent_registry_services_create_time" {
  description = "Map of create_time values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no create_time are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "agent_registry_services_deletion_policy" {
  description = "Map of deletion_policy values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no deletion_policy are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "agent_registry_services_description" {
  description = "Map of description values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no description are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.description if v.description != null && length(v.description) > 0 }
}
output "agent_registry_services_display_name" {
  description = "Map of display_name values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no display_name are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "agent_registry_services_endpoint_spec" {
  description = "Map of endpoint_spec values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no endpoint_spec are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => one(v.endpoint_spec) if v.endpoint_spec != null && length(v.endpoint_spec) > 0 }
}
output "agent_registry_services_interfaces" {
  description = "Map of interfaces values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no interfaces are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.interfaces if v.interfaces != null && length(v.interfaces) > 0 }
}
output "agent_registry_services_location" {
  description = "Map of location values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no location are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.location if v.location != null && length(v.location) > 0 }
}
output "agent_registry_services_mcp_server_spec" {
  description = "Map of mcp_server_spec values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no mcp_server_spec are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => one(v.mcp_server_spec) if v.mcp_server_spec != null && length(v.mcp_server_spec) > 0 }
}
output "agent_registry_services_name" {
  description = "Map of name values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no name are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_registry_services_project" {
  description = "Map of project values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no project are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.project if v.project != null && length(v.project) > 0 }
}
output "agent_registry_services_registry_resource" {
  description = "Map of registry_resource values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no registry_resource are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.registry_resource if v.registry_resource != null && length(v.registry_resource) > 0 }
}
output "agent_registry_services_service_id" {
  description = "Map of service_id values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no service_id are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}
output "agent_registry_services_update_time" {
  description = "Map of update_time values across all agent_registry_services, keyed the same as var.agent_registry_services except keys with no update_time are omitted"
  value       = { for k, v in google_agent_registry_service.agent_registry_services : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

