data "google_compute_network" "gke_vpc" {
    project = var.project_id
    name = var.gke_vpc_name

    depends_on = [
      google_compute_network.gke-custom-vpc
    ]
}

data "google_compute_subnetwork" "my-subnetwork" {
  project = var.project_id
  name   = var.gke_subnetwork
  region = "var.region"

  depends_on = [
    google_compute_subnetwork.gke-custom-snet
  ]
}

