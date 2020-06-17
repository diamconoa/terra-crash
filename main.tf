provider "phpipam" {
  app_id   = var.phpipam_app_id
  endpoint = var.phpipam_endpoint
  password = var.phpipam_password
  username = var.phpipam_username
}

data "phpipam_addresses" "address_search" {
  subnet_id = 66
  custom_field_filter = {
    CustomTestAddresses = ".*terraform.*"
  }
}

output "search_result" {
  value = data.phpipam_addresses.address_search
}
