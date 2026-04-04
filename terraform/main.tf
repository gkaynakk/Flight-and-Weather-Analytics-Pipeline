provider "google" {
  project = "zoomcampcapstoneproject"
  region  = "US"
}

resource "google_bigquery_dataset" "flight_data" {
  dataset_id = "flight_data"
  location   = "US"
}

variable "project_id" {
  default = "zoomcampcapstoneproject"
}