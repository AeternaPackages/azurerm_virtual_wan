# --- azurerm_virtual_wan ---
output "virtual_wans_id" {
  description = "Map of id values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_id
}

output "virtual_wans_allow_branch_to_branch_traffic" {
  description = "Map of allow_branch_to_branch_traffic values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_allow_branch_to_branch_traffic
}

output "virtual_wans_disable_vpn_encryption" {
  description = "Map of disable_vpn_encryption values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_disable_vpn_encryption
}

output "virtual_wans_location" {
  description = "Map of location values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_location
}

output "virtual_wans_name" {
  description = "Map of name values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_name
}

output "virtual_wans_office365_local_breakout_category" {
  description = "Map of office365_local_breakout_category values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_office365_local_breakout_category
}

output "virtual_wans_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_resource_group_name
}

output "virtual_wans_tags" {
  description = "Map of tags values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_tags
}

output "virtual_wans_type" {
  description = "Map of type values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = module.virtual_wans.virtual_wans_type
}

# --- azurerm_virtual_hub ---
output "virtual_hubs_id" {
  description = "Map of id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_id
}

output "virtual_hubs_address_prefix" {
  description = "Map of address_prefix values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_address_prefix
}

output "virtual_hubs_branch_to_branch_traffic_enabled" {
  description = "Map of branch_to_branch_traffic_enabled values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_branch_to_branch_traffic_enabled
}

output "virtual_hubs_default_route_table_id" {
  description = "Map of default_route_table_id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_default_route_table_id
}

output "virtual_hubs_hub_routing_preference" {
  description = "Map of hub_routing_preference values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_hub_routing_preference
}

output "virtual_hubs_location" {
  description = "Map of location values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_location
}

output "virtual_hubs_name" {
  description = "Map of name values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_name
}

output "virtual_hubs_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_resource_group_name
}

output "virtual_hubs_route" {
  description = "Map of route values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_route
}

output "virtual_hubs_sku" {
  description = "Map of sku values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_sku
}

output "virtual_hubs_tags" {
  description = "Map of tags values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_tags
}

output "virtual_hubs_virtual_router_asn" {
  description = "Map of virtual_router_asn values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_virtual_router_asn
}

output "virtual_hubs_virtual_router_auto_scale_min_capacity" {
  description = "Map of virtual_router_auto_scale_min_capacity values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_virtual_router_auto_scale_min_capacity
}

output "virtual_hubs_virtual_router_ips" {
  description = "Map of virtual_router_ips values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_virtual_router_ips
}

output "virtual_hubs_virtual_wan_id" {
  description = "Map of virtual_wan_id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = module.virtual_hubs.virtual_hubs_virtual_wan_id
}

# --- azurerm_virtual_hub_bgp_connection ---
output "virtual_hub_bgp_connections_id" {
  description = "Map of id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = module.virtual_hub_bgp_connections.virtual_hub_bgp_connections_id
}

output "virtual_hub_bgp_connections_name" {
  description = "Map of name values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = module.virtual_hub_bgp_connections.virtual_hub_bgp_connections_name
}

output "virtual_hub_bgp_connections_peer_asn" {
  description = "Map of peer_asn values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = module.virtual_hub_bgp_connections.virtual_hub_bgp_connections_peer_asn
}

output "virtual_hub_bgp_connections_peer_ip" {
  description = "Map of peer_ip values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = module.virtual_hub_bgp_connections.virtual_hub_bgp_connections_peer_ip
}

output "virtual_hub_bgp_connections_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = module.virtual_hub_bgp_connections.virtual_hub_bgp_connections_virtual_hub_id
}

output "virtual_hub_bgp_connections_virtual_network_connection_id" {
  description = "Map of virtual_network_connection_id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = module.virtual_hub_bgp_connections.virtual_hub_bgp_connections_virtual_network_connection_id
}

# --- azurerm_virtual_hub_connection ---
output "virtual_hub_connections_id" {
  description = "Map of id values across all virtual_hub_connections, keyed the same as var.virtual_hub_connections"
  value       = module.virtual_hub_connections.virtual_hub_connections_id
}

output "virtual_hub_connections_internet_security_enabled" {
  description = "Map of internet_security_enabled values across all virtual_hub_connections, keyed the same as var.virtual_hub_connections"
  value       = module.virtual_hub_connections.virtual_hub_connections_internet_security_enabled
}

output "virtual_hub_connections_name" {
  description = "Map of name values across all virtual_hub_connections, keyed the same as var.virtual_hub_connections"
  value       = module.virtual_hub_connections.virtual_hub_connections_name
}

output "virtual_hub_connections_remote_virtual_network_id" {
  description = "Map of remote_virtual_network_id values across all virtual_hub_connections, keyed the same as var.virtual_hub_connections"
  value       = module.virtual_hub_connections.virtual_hub_connections_remote_virtual_network_id
}

output "virtual_hub_connections_routing" {
  description = "Map of routing values across all virtual_hub_connections, keyed the same as var.virtual_hub_connections"
  value       = module.virtual_hub_connections.virtual_hub_connections_routing
}

output "virtual_hub_connections_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_connections, keyed the same as var.virtual_hub_connections"
  value       = module.virtual_hub_connections.virtual_hub_connections_virtual_hub_id
}

# --- azurerm_virtual_hub_ip ---
output "virtual_hub_ips_id" {
  description = "Map of id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = module.virtual_hub_ips.virtual_hub_ips_id
}

output "virtual_hub_ips_name" {
  description = "Map of name values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = module.virtual_hub_ips.virtual_hub_ips_name
}

output "virtual_hub_ips_private_ip_address" {
  description = "Map of private_ip_address values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = module.virtual_hub_ips.virtual_hub_ips_private_ip_address
}

output "virtual_hub_ips_private_ip_allocation_method" {
  description = "Map of private_ip_allocation_method values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = module.virtual_hub_ips.virtual_hub_ips_private_ip_allocation_method
}

output "virtual_hub_ips_public_ip_address_id" {
  description = "Map of public_ip_address_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = module.virtual_hub_ips.virtual_hub_ips_public_ip_address_id
}

output "virtual_hub_ips_subnet_id" {
  description = "Map of subnet_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = module.virtual_hub_ips.virtual_hub_ips_subnet_id
}

output "virtual_hub_ips_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = module.virtual_hub_ips.virtual_hub_ips_virtual_hub_id
}

# --- azurerm_virtual_hub_route_table ---
output "virtual_hub_route_tables_id" {
  description = "Map of id values across all virtual_hub_route_tables, keyed the same as var.virtual_hub_route_tables"
  value       = module.virtual_hub_route_tables.virtual_hub_route_tables_id
}

output "virtual_hub_route_tables_labels" {
  description = "Map of labels values across all virtual_hub_route_tables, keyed the same as var.virtual_hub_route_tables"
  value       = module.virtual_hub_route_tables.virtual_hub_route_tables_labels
}

output "virtual_hub_route_tables_name" {
  description = "Map of name values across all virtual_hub_route_tables, keyed the same as var.virtual_hub_route_tables"
  value       = module.virtual_hub_route_tables.virtual_hub_route_tables_name
}

output "virtual_hub_route_tables_route" {
  description = "Map of route values across all virtual_hub_route_tables, keyed the same as var.virtual_hub_route_tables"
  value       = module.virtual_hub_route_tables.virtual_hub_route_tables_route
}

output "virtual_hub_route_tables_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_route_tables, keyed the same as var.virtual_hub_route_tables"
  value       = module.virtual_hub_route_tables.virtual_hub_route_tables_virtual_hub_id
}

# --- azurerm_virtual_hub_routing_intent ---
output "virtual_hub_routing_intents_id" {
  description = "Map of id values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = module.virtual_hub_routing_intents.virtual_hub_routing_intents_id
}

output "virtual_hub_routing_intents_name" {
  description = "Map of name values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = module.virtual_hub_routing_intents.virtual_hub_routing_intents_name
}

output "virtual_hub_routing_intents_routing_policy" {
  description = "Map of routing_policy values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = module.virtual_hub_routing_intents.virtual_hub_routing_intents_routing_policy
}

output "virtual_hub_routing_intents_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_routing_intents, keyed the same as var.virtual_hub_routing_intents"
  value       = module.virtual_hub_routing_intents.virtual_hub_routing_intents_virtual_hub_id
}

# --- azurerm_virtual_hub_security_partner_provider ---
output "virtual_hub_security_partner_providers_id" {
  description = "Map of id values across all virtual_hub_security_partner_providers, keyed the same as var.virtual_hub_security_partner_providers"
  value       = module.virtual_hub_security_partner_providers.virtual_hub_security_partner_providers_id
}

output "virtual_hub_security_partner_providers_location" {
  description = "Map of location values across all virtual_hub_security_partner_providers, keyed the same as var.virtual_hub_security_partner_providers"
  value       = module.virtual_hub_security_partner_providers.virtual_hub_security_partner_providers_location
}

output "virtual_hub_security_partner_providers_name" {
  description = "Map of name values across all virtual_hub_security_partner_providers, keyed the same as var.virtual_hub_security_partner_providers"
  value       = module.virtual_hub_security_partner_providers.virtual_hub_security_partner_providers_name
}

output "virtual_hub_security_partner_providers_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_hub_security_partner_providers, keyed the same as var.virtual_hub_security_partner_providers"
  value       = module.virtual_hub_security_partner_providers.virtual_hub_security_partner_providers_resource_group_name
}

output "virtual_hub_security_partner_providers_security_provider_name" {
  description = "Map of security_provider_name values across all virtual_hub_security_partner_providers, keyed the same as var.virtual_hub_security_partner_providers"
  value       = module.virtual_hub_security_partner_providers.virtual_hub_security_partner_providers_security_provider_name
}

output "virtual_hub_security_partner_providers_tags" {
  description = "Map of tags values across all virtual_hub_security_partner_providers, keyed the same as var.virtual_hub_security_partner_providers"
  value       = module.virtual_hub_security_partner_providers.virtual_hub_security_partner_providers_tags
}

output "virtual_hub_security_partner_providers_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_security_partner_providers, keyed the same as var.virtual_hub_security_partner_providers"
  value       = module.virtual_hub_security_partner_providers.virtual_hub_security_partner_providers_virtual_hub_id
}


