variable "virtual_wans" {
  description = <<EOT
Map of virtual_wans, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - allow_branch_to_branch_traffic
    - disable_vpn_encryption
    - office365_local_breakout_category
    - tags
    - type
Nested virtual_hubs (azurerm_virtual_hub):
    Required:
        - location
        - name
        - resource_group_name
    Optional:
        - address_prefix
        - branch_to_branch_traffic_enabled
        - hub_routing_preference
        - sku
        - tags
        - virtual_router_auto_scale_min_capacity
        - route (block)
    Nested virtual_hub_bgp_connections (azurerm_virtual_hub_bgp_connection):
        Required:
            - name
            - peer_asn
            - peer_ip
        Optional:
            - virtual_network_connection_id
    Nested virtual_hub_connections (azurerm_virtual_hub_connection):
        Required:
            - name
            - remote_virtual_network_id
        Optional:
            - internet_security_enabled
            - routing (block)
    Nested virtual_hub_ips (azurerm_virtual_hub_ip):
        Required:
            - name
            - public_ip_address_id
            - subnet_id
        Optional:
            - private_ip_address
            - private_ip_allocation_method
    Nested virtual_hub_route_tables (azurerm_virtual_hub_route_table):
        Required:
            - name
        Optional:
            - labels
            - route (block)
    Nested virtual_hub_routing_intents (azurerm_virtual_hub_routing_intent):
        Required:
            - name
            - routing_policy (block)
    Nested virtual_hub_security_partner_providers (azurerm_virtual_hub_security_partner_provider):
        Required:
            - location
            - name
            - resource_group_name
            - security_provider_name
        Optional:
            - tags
EOT

  type = map(object({
    location                          = string
    name                              = string
    resource_group_name               = string
    allow_branch_to_branch_traffic    = optional(bool)
    disable_vpn_encryption            = optional(bool)
    office365_local_breakout_category = optional(string)
    tags                              = optional(map(string))
    type                              = optional(string)
    virtual_hubs = optional(map(object({
      location                               = string
      name                                   = string
      resource_group_name                    = string
      address_prefix                         = optional(string)
      branch_to_branch_traffic_enabled       = optional(bool)
      hub_routing_preference                 = optional(string)
      sku                                    = optional(string)
      tags                                   = optional(map(string))
      virtual_router_auto_scale_min_capacity = optional(number)
      route = optional(list(object({
        address_prefixes    = list(string)
        next_hop_ip_address = string
      })))
      virtual_hub_bgp_connections = optional(map(object({
        name                          = string
        peer_asn                      = number
        peer_ip                       = string
        virtual_network_connection_id = optional(string)
      })))
      virtual_hub_connections = optional(map(object({
        name                      = string
        remote_virtual_network_id = string
        internet_security_enabled = optional(bool)
        routing = optional(object({
          associated_route_table_id = optional(string)
          inbound_route_map_id      = optional(string)
          outbound_route_map_id     = optional(string)
          propagated_route_table = optional(object({
            labels          = optional(set(string))
            route_table_ids = optional(list(string))
          }))
          static_vnet_local_route_override_criteria   = optional(string)
          static_vnet_propagate_static_routes_enabled = optional(bool)
          static_vnet_route = optional(list(object({
            address_prefixes    = optional(set(string))
            name                = optional(string)
            next_hop_ip_address = optional(string)
          })))
        }))
      })))
      virtual_hub_ips = optional(map(object({
        name                         = string
        public_ip_address_id         = string
        subnet_id                    = string
        private_ip_address           = optional(string)
        private_ip_allocation_method = optional(string)
      })))
      virtual_hub_route_tables = optional(map(object({
        name   = string
        labels = optional(set(string))
        route = optional(list(object({
          destinations      = set(string)
          destinations_type = string
          name              = string
          next_hop          = string
          next_hop_type     = optional(string)
        })))
      })))
      virtual_hub_routing_intents = optional(map(object({
        name = string
        routing_policy = list(object({
          destinations = list(string)
          name         = string
          next_hop     = string
        }))
      })))
      virtual_hub_security_partner_providers = optional(map(object({
        location               = string
        name                   = string
        resource_group_name    = string
        security_provider_name = string
        tags                   = optional(map(string))
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.virtual_wans) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.virtual_wans : [for kk in keys(coalesce(v0.virtual_hubs, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.virtual_wans : [for k1, v1 in coalesce(v0.virtual_hubs, {}) : [for kk in keys(coalesce(v1.virtual_hub_bgp_connections, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.virtual_wans : [for k1, v1 in coalesce(v0.virtual_hubs, {}) : [for kk in keys(coalesce(v1.virtual_hub_connections, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.virtual_wans : [for k1, v1 in coalesce(v0.virtual_hubs, {}) : [for kk in keys(coalesce(v1.virtual_hub_ips, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.virtual_wans : [for k1, v1 in coalesce(v0.virtual_hubs, {}) : [for kk in keys(coalesce(v1.virtual_hub_route_tables, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.virtual_wans : [for k1, v1 in coalesce(v0.virtual_hubs, {}) : [for kk in keys(coalesce(v1.virtual_hub_routing_intents, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.virtual_wans : [for k1, v1 in coalesce(v0.virtual_hubs, {}) : [for kk in keys(coalesce(v1.virtual_hub_security_partner_providers, {})) : !strcontains(kk, "/")]]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
