data "databricks_clusters" "clusters_lookup" {
  for_each = var.clusters_lookup

  cluster_name_contains = each.value.cluster_name_contains
  ids                   = each.value.ids

  dynamic "filter_by" {
    for_each = each.value.filter_by != null ? [each.value.filter_by] : []
    content {
      cluster_sources = filter_by.value.cluster_sources
      cluster_states  = filter_by.value.cluster_states
      is_pinned       = filter_by.value.is_pinned
      policy_id       = filter_by.value.policy_id
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

