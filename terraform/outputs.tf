
# output "external_ip_address_app" {
#   value = yandex_compute_instance.app.network_interface.0.nat_ip_address
# }

# output "external_ip_address_lb" {
#   value = yandex_compute_instance.lb.network_interface.0.nat_ip_address
# }
output "external_ip_address_app" {
  value = { for i in range(var.reddit_instance_count) : "reddit-app-${i}" => yandex_vpc_address.app_vpc[i].external_ipv4_address[0].address }
}
