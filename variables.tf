variable "agent_registry_services" {
  description = <<EOT
Map of agent_registry_services, attributes below
Required:
    - location
    - service_id
Optional:
    - deletion_policy
    - description
    - display_name
    - project
    - agent_spec (block):
        - content (optional)
        - type (required)
    - endpoint_spec (block):
        - type (required)
    - interfaces (block):
        - protocol_binding (required)
        - url (required)
    - mcp_server_spec (block):
        - content (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    service_id      = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    project         = optional(string)
    agent_spec = optional(object({
      content = optional(string)
      type    = string
    }))
    endpoint_spec = optional(object({
      type = string
    }))
    interfaces = optional(list(object({
      protocol_binding = string
      url              = string
    })))
    mcp_server_spec = optional(object({
      content = optional(string)
      type    = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.agent_registry_services : (
        v.agent_spec == null || (v.agent_spec.content == null || (can(jsondecode(v.agent_spec.content))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.agent_registry_services : (
        v.mcp_server_spec == null || (v.mcp_server_spec.content == null || (can(jsondecode(v.mcp_server_spec.content))))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

