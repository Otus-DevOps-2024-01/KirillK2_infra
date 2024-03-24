variable cloud_id{
  description = "b1g6hhamm9k4o7kl7h6c"
}
variable folder_id {
  description = "b1g7baavce33hjg4d6q4"
}
variable zone {
  description = "ru-central1-a"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable public_key_path {
  # Описание переменной
  # description = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  description = "~/.ssh/id_ed25519.pub"
}
variable image_id {
  description = "fd81bgbokth1a9jmblfu"
}
variable subnet_id{
  description = "e9b9rju9c1qjlq9jmi8h"
}
variable service_account_key_file{
  description = "/home/kirill/vault/terraform/key.json"
}
