variable "clusters_lookup" {
  description = <<EOT
Map of clusters_lookup, attributes below
Optional:
    - cluster_name_contains
    - ids
    - filter_by (block):
        - cluster_sources (optional)
        - cluster_states (optional)
        - is_pinned (optional)
        - policy_id (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    cluster_name_contains = optional(string)
    ids                   = optional(set(string))
    filter_by = optional(object({
      cluster_sources = optional(list(string))
      cluster_states  = optional(list(string))
      is_pinned       = optional(bool)
      policy_id       = optional(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

