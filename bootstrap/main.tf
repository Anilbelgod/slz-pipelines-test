resource "google_storage_bucket" "auto-expire" {
  project = "prj-b-seed-5ee9"
  name          = "auto-expiring-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}