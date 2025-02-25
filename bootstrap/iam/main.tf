resource "google_compute_network" "vpc_network" {
  project                 = var.project_name
  name                    = var.name
  auto_create_subnetworks = true
  mtu                     = 1460
}