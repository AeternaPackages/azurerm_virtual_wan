locals {
  virtual_wans = { for k1, v1 in var.virtual_wans : k1 => { allow_branch_to_branch_traffic = v1.allow_branch_to_branch_traffic, disable_vpn_encryption = v1.disable_vpn_encryption, location = v1.location, name = v1.name, office365_local_breakout_category = v1.office365_local_breakout_category, resource_group_name = v1.resource_group_name, tags = v1.tags, type = v1.type } }

  virtual_hubs = merge([
    for k1, v1 in var.virtual_wans : {
      for k2, v2 in coalesce(v1.virtual_hubs, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_wan_id = module.virtual_wans.virtual_wans_id["${k1}"]
      })
    }
  ]...)

  virtual_hub_bgp_connections = merge([
    for k1, v1 in var.virtual_wans : merge([
      for k2, v2 in coalesce(v1.virtual_hubs, {}) : {
        for k3, v3 in coalesce(v2.virtual_hub_bgp_connections, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          virtual_hub_id = module.virtual_hubs.virtual_hubs_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  virtual_hub_connections = merge([
    for k1, v1 in var.virtual_wans : merge([
      for k2, v2 in coalesce(v1.virtual_hubs, {}) : {
        for k3, v3 in coalesce(v2.virtual_hub_connections, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          virtual_hub_id = module.virtual_hubs.virtual_hubs_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  virtual_hub_ips = merge([
    for k1, v1 in var.virtual_wans : merge([
      for k2, v2 in coalesce(v1.virtual_hubs, {}) : {
        for k3, v3 in coalesce(v2.virtual_hub_ips, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          virtual_hub_id = module.virtual_hubs.virtual_hubs_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  virtual_hub_route_tables = merge([
    for k1, v1 in var.virtual_wans : merge([
      for k2, v2 in coalesce(v1.virtual_hubs, {}) : {
        for k3, v3 in coalesce(v2.virtual_hub_route_tables, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          virtual_hub_id = module.virtual_hubs.virtual_hubs_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  virtual_hub_routing_intents = merge([
    for k1, v1 in var.virtual_wans : merge([
      for k2, v2 in coalesce(v1.virtual_hubs, {}) : {
        for k3, v3 in coalesce(v2.virtual_hub_routing_intents, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          virtual_hub_id = module.virtual_hubs.virtual_hubs_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  virtual_hub_security_partner_providers = merge([
    for k1, v1 in var.virtual_wans : merge([
      for k2, v2 in coalesce(v1.virtual_hubs, {}) : {
        for k3, v3 in coalesce(v2.virtual_hub_security_partner_providers, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          virtual_hub_id = module.virtual_hubs.virtual_hubs_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "virtual_wans" {
  source       = "git::https://github.com/AeternaModules/azurerm_virtual_wan.git?ref=v5.0.0"
  virtual_wans = local.virtual_wans
}

module "virtual_hubs" {
  source       = "git::https://github.com/AeternaModules/azurerm_virtual_hub.git?ref=v5.0.0"
  virtual_hubs = local.virtual_hubs
  depends_on   = [module.virtual_wans]
}

module "virtual_hub_bgp_connections" {
  source                      = "git::https://github.com/AeternaModules/azurerm_virtual_hub_bgp_connection.git?ref=v5.0.0"
  virtual_hub_bgp_connections = local.virtual_hub_bgp_connections
  depends_on                  = [module.virtual_hubs]
}

module "virtual_hub_connections" {
  source                  = "git::https://github.com/AeternaModules/azurerm_virtual_hub_connection.git?ref=v5.0.0"
  virtual_hub_connections = local.virtual_hub_connections
  depends_on              = [module.virtual_hubs]
}

module "virtual_hub_ips" {
  source          = "git::https://github.com/AeternaModules/azurerm_virtual_hub_ip.git?ref=v5.0.0"
  virtual_hub_ips = local.virtual_hub_ips
  depends_on      = [module.virtual_hubs]
}

module "virtual_hub_route_tables" {
  source                   = "git::https://github.com/AeternaModules/azurerm_virtual_hub_route_table.git?ref=v5.0.0"
  virtual_hub_route_tables = local.virtual_hub_route_tables
  depends_on               = [module.virtual_hubs]
}

module "virtual_hub_routing_intents" {
  source                      = "git::https://github.com/AeternaModules/azurerm_virtual_hub_routing_intent.git?ref=v5.0.0"
  virtual_hub_routing_intents = local.virtual_hub_routing_intents
  depends_on                  = [module.virtual_hubs]
}

module "virtual_hub_security_partner_providers" {
  source                                 = "git::https://github.com/AeternaModules/azurerm_virtual_hub_security_partner_provider.git?ref=v5.0.0"
  virtual_hub_security_partner_providers = local.virtual_hub_security_partner_providers
  depends_on                             = [module.virtual_hubs]
}

