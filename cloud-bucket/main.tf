resource "google_compute_network" "vpc_network" {
  project                 = "prj-b-seed-5ee9"
  name                    = "vpc-network-test"
  auto_create_subnetworks = true
  mtu                     = 1460
}