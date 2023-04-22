variable "environment" {
  type = string
  default = "production"
  description = "Environment for the GKE cluster"
}

variable "project_id" {
  type = string
  default = "production"
  description = "Environment for the GKE cluster"
}

variable "region" {
  type = string
  default = "asia-south1"
  description = "region for the GKE cluster"
  }
variable "node_locations" {
  type = string
  default = "asia-south1-c"
  description = "region for the GKE cluster"
  }

  variable "gke_app" {
  type = string
  default = "europe-west2"
  description = "GKE APP"
  }

variable "cluster_ipv4_cidr_pods" {
  type = string
  default = ""
  description = ""
}


variable "cluster_type" {
  type = string
  default = "rstandard"
  description = "Cluster Type: "
}

variable "gke_vpc_name" {
  type = string
  default = "default"
  description = "VPC where GKE will be deployed"
}

variable "gke_subnetwork" {
  type = string
  default = "default"
  description = "Subnet where GKE will be deployed"
}

variable "cluster_mode" {
  type = string
  default = "private"
  description = "Private or public"
}

variable "cluster_location" {
  type = string
  default = "regional"
  description = "regional or zonal"
}
variable "logging_config" {
  type = list(string)
  default = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  description = "region for the GKE cluster"
  }
variable "monitoring_config" {
  type = list(string)
  default = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  description = "region for the GKE cluster"
  }
variable "datapath_provider" {
  type = string
  default = "default"
  description = "region for the GKE cluster"
  }
variable "network_policy_enable"{
  type = bool
  default = true
}
variable "enable_shielded_nodes" {
  type = bool
  default = true
  description = "Environment for the GKE cluster"
}

variable "initial_node_count" {
  type = number
  default = 1
  description = "Environment for the GKE cluster"
}
variable "default_max_pods_per_node" {
  type = number
  default = 100
  description = "Environment for the GKE cluster"
}
variable "remove_default_node_pool" {
  type = bool
  default = true
  description = "Environment for the GKE cluster"
}
variable "networking_mode" {
  type = string
  default = "VPC_NATIVE"
  description = "Environment for the GKE cluster"
}
variable "istio_config" {
  type = bool
  default = true
  description = "Environment for the GKE cluster"
}
variable "istio_auth" {
  type = string
  default = "AUTH_MUTUAL_TLS"
  description = "Environment for the GKE cluster"
}
variable "resourcelimits" {
  type = list(object({
    resource_type = string
    minimum = number
    maximum = number
  }))
}
variable "cluster_autoscaling_profile" {
  type = string
  default = "BALANCED"
  description = "Environment for the GKE cluster"
}

variable "cluster_autoscaling_enabled" {
  type = bool
  default = true
  description = "Environment for the GKE cluster"
}

variable "maintenance_policy" {
  type = object({
    recurring_window = object({
      start_time = string
      end_time = string
      recurrence = string
    })
    maintenance_exclusion = object({
      exclusion_name = string
      start_time = string
      end_time = string
      exclusion_options = object({
        scope = string
      })
    })
  })
  default = {
    recurring_window = {
      start_time = "2019-01-01T09:00:00Z"
      end_time = "2019-01-01T17:00:00Z"
      recurrence = "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR"
    }
    maintenance_exclusion = {
      exclusion_name = "gke-maintainance-exclusion"
      start_time = "2019-01-01T00:00:00Z"
      end_time = "2019-01-02T00:00:00Z"
      exclusion_options = {
        scope = "NO_UPGRADES"
      }
    }
  }
}
variable "horizontal_pod_autoscaling" {
  type = bool
  default = false
  description = "region for the GKE cluster"
  }
variable "http_load_balancing" {
  type = bool
  default = false
  description = "region for the GKE cluster"
  }
variable "network_policy_config" {
  type = bool
  default = false
  description = "region for the GKE cluster"
  }
variable "gcp_filestore_csi_driver_config" {
  type = bool
  default = false
  description = "region for the GKE cluster"
  }
variable "cloudrun_config" {
  type = bool
  default = false
  description = "region for the GKE cluster"
  }
variable "dns_cache_config" {
  type = bool
  default = true
  description = "region for the GKE cluster"
  }
variable "binary_authorization" {
  type = string
  default = "PROJECT_SINGLETON_POLICY_ENFORCE"
  description = "Environment for the GKE cluster"
}
variable "service_external_ips_config" {
  type = bool
  default = true
  description = "Environment for the GKE cluster"
}
variable "issue_client_certificate" {
  type = bool
  default = false
  description = "Environment for the GKE cluster"
}
variable "database_encryption" {
  type = string
  default = "DECRYPTED"
  description = "Environment for the GKE cluster"
}
variable "vertical_pod_autoscaling" {
  type = bool
  default = false
  description = "Environment for the GKE cluster"
}
variable "node_config" {
  type = object({
    preemptible  = bool
    machine_type = string
    image_type   = string
    disk_type    = string
    disk_size_gb = number
  })
}
variable "min_node_count" {
  type = number
  default = 1
  description = "Environment for the GKE cluster"
}
variable "max_node_count" {
  type = number
  default = 3
  description = "Environment for the GKE cluster"
}
variable "auto_repair" {
  type = bool
  default = true
}
variable "auto_upgrade" {
  type = bool
  default = true
}
variable "max_surge" {
  type = number
  default = 0
}
variable "max_unavailable" {
  type = number
  default = 0
}
variable "node_count" {
  type = number
  default = 1
  description = "Environment for the GKE cluster"
}
variable "enable_integrity_monitoring" {
  type = bool
  default = true
}
variable "enable_secure_boot" {
  type = bool
  default = true
}
variable "service_account" {
  type = string
  default = "default"
}
variable "guest_accelerator" {
  type = object({ 
    guest_accelerator_type = string
    guest_accelerator_count = number 
    
  })
    
    gpu_sharing_config = object({
      gpu_sharing_strategy = string
      max_shared_clients_per_gpu = number
    
    })
  }
  default = {
      guest_accelerator_type = "nvidia-tesla-k80"
      guest_accelerator_count = 2
    }
    gpu_sharing_config = {
      gpu_sharing_strategy = "TIME_SHARING"
      max_shared_clients_per_gpu = 5
    }
  



