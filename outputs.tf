data "huaweicloud_availability_zones" "mexico_1" {
  region = "na-mexico-1"
  state  = "available"
}

output "zonez_mexico_1_ids" {
  description = "zona de disponibilidad"
  value       = data.huaweicloud_availability_zones.mexico_1.id
}

output "zonez_mexico_1_names" {
  description = "zona de disponibilidad"
  value       = data.huaweicloud_availability_zones.mexico_1.names
}

data "huaweicloud_availability_zones" "mexico_2" {
  #  region = "la-north-2"
  state = "available"
}

output "zonez_mexico_2_id" {
  description = "zona de disponibilidad"
  value       = data.huaweicloud_availability_zones.mexico_2.id
}

output "zonez_mexico_2_name" {
  description = "zona de disponibilidad"
  value       = data.huaweicloud_availability_zones.mexico_2.names
}

# data "huaweicloud_compute_flavors" "sabor_os" {
#   performance_type = "normal"
# }
# output "sabor_OS" {
#   value = data.huaweicloud_compute_flavors.sabor_os.ids
# }

data "huaweicloud_vpc_subnet" "subnet" {
  cidr = "172.20.130.0/24"
}

output "subnet_vpc_name" {
  value = data.huaweicloud_vpc_subnet.subnet.name
}
data "huaweicloud_compute_flavors" "flavors_mx_1" {
  region           = "na-mexico-1"
  performance_type = "normal"
  cpu_core_count   = 1
  memory_size      = 2
}
output "flavors_mx_1" {
  value = data.huaweicloud_compute_flavors.flavors_mx_1.ids[1]
}
data "huaweicloud_compute_flavors" "flavors_mx2c" {
  region           = "la-north-2"
  performance_type = "normal"
  cpu_core_count   = 1
  memory_size      = 2
}

output "flavors_mx2c" {
  value = data.huaweicloud_compute_flavors.flavors_mx2c.ids[0]
}

data "huaweicloud_images_image" "myimage" {
  visibility  = "public"
  os = "Ubuntu"
  # most_recent = true
}

data "huaweicloud_images_images" "myimages" {
  visibility  = "public"
  # most_recent = true
}


output "SO_image" {
  value = data.huaweicloud_images_image.myimage.name
}


output "SO_images" {
  value = data.huaweicloud_images_images.myimages.name
}