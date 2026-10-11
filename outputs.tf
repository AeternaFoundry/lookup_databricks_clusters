output "clusters_lookup_id" {
  description = "Map of id values across all clusters_lookup, keyed the same as var.clusters_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_clusters.clusters_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "clusters_lookup_cluster_name_contains" {
  description = "Map of cluster_name_contains values across all clusters_lookup, keyed the same as var.clusters_lookup except keys with no cluster_name_contains are omitted"
  value       = { for k, v in data.databricks_clusters.clusters_lookup : k => v.cluster_name_contains if v.cluster_name_contains != null && length(v.cluster_name_contains) > 0 }
}
output "clusters_lookup_filter_by" {
  description = "Map of filter_by values across all clusters_lookup, keyed the same as var.clusters_lookup except keys with no filter_by are omitted"
  value       = { for k, v in data.databricks_clusters.clusters_lookup : k => one(v.filter_by) if v.filter_by != null && length(v.filter_by) > 0 }
}
output "clusters_lookup_ids" {
  description = "Map of ids values across all clusters_lookup, keyed the same as var.clusters_lookup except keys with no ids are omitted"
  value       = { for k, v in data.databricks_clusters.clusters_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "clusters_lookup_provider_config" {
  description = "Map of provider_config values across all clusters_lookup, keyed the same as var.clusters_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_clusters.clusters_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

