terraform {
  backend "gcs" {
    # bucket = "your-bucket-name"
    # prefix = "${_APPLICATION_DIRECTORY}/${_ENVIRONMENT}"
  }
}