variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable "public_key_path" {
  type        = string
  description = "Full path to public key"
}
variable subnet_id {
description = "Subnets for modules"
}
