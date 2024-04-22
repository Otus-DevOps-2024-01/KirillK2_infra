variable "cloud_id" {
  description = "yandex cloud ID"
}
variable "folder_id" {
  description = "yandex cloud folder ID"
}
variable "zone" {
  description = "Default zone"
  default     = "ru-central1-a"
}
variable "zone_instance" {
  description = "default zone for yandex_compute_instance"
  default     = "ru-central1-a"
}
variable "public_key_path" {
  description = "Full path to public key"
}
variable "private_key_path" {
  description = "Full path to private key"
}
variable "image_id" {
  description = "yandex cloud image ID"
}
variable "subnet_id" {
  description = "yandex cloud subnet id of ru-central1-a"
}
variable "service_account_key_file" {
  description = "Full path to json key file"
}
