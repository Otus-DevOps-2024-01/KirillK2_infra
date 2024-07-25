variable "cloud_id" {
  type        = string
  description = "yandex cloud ID"
}
variable "folder_id" {
  type        = string
  description = "yandex cloud folder ID"
}
variable "zone" {
  type        = string
  description = "Default zone"
  default     = "ru-central1-a"
}
variable "public_key_path" {
  type        = string
  description = "Full path to public key"
}
variable "private_key_path" {
  type        = string
  description = "Full path to private key"
}
variable "image_id" {
  type        = string
  description = "yandex cloud image ID"
}
variable "subnet_id" {
  type        = string
  description = "yandex cloud subnet id of ru-central1-a"
}
variable "service_account_key_file" {
  type        = string
  description = "Full path to json key file"
}
# variable "reddit_instance_count" {
#   type = number
# }
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
