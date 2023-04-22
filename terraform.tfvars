cluster_type = "standard"
cluster_mode = "private"
cluster_location = "regional"
region = "asia-south1"
node_locations = "asia-south1-c"
gke_vpc_name = "test-network"
gke_subnetwork = "test-subnetwork"
gke_app = "wordpress"
environment = "production"
project_id = "terraformer-376507"
datapath_provider = "ADVANCED_DATAPATH"
logging_config = ["SYSTEM_COMPONENTS", "WORKLOADS"]
monitoring_config = ["SYSTEM_COMPONENTS", "WORKLOADS"]
default_max_pods_per_node = 100
remove_default_node_pool = true
initial_node_count       = 1
enable_shielded_nodes     = true
networking_mode = "VPC_NATIVE"
network_policy_enable = true
istio_config = true
istio_auth = "AUTH_MUTUAL_TLS"
resourcelimits = [{ resource_type = "cpu", minimum = 4, maximum = 8 }, { resource_type = "memory", minimum = 5, maximum = 10 } ]
cluster_autoscaling_profile = "BALANCED"
cluster_autoscaling_enabled = true
maintenance_policy = {
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

binary_authorization = "PROJECT_SINGLETON_POLICY_ENFORCE"
issue_client_certificate = false
node_config = {
    preemptible  = true
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_type    = "pd-standard"
    disk_size_gb = 100
}
auto_repair = true
auto_upgrade = true
max_surge = 0
max_unavailable = 0
node_count = 1
horizontal_pod_autoscaling = false
http_load_balancing = false
network_policy_config = false
gcp_filestore_csi_driver_config = false
cloudrun_config = false
dns_cache_config = true
service_external_ips_config = true
database_encryption = "DECRYPTED"
vertical_pod_autoscaling = false
enable_integrity_monitoring = true
enable_secure_boot = true
service_account = "terrformersakey@terraformer-376507.iam.gserviceaccount.com"



