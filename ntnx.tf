provider "nutanix" {
  username = "nutanix"
  password = "nutanix/4u"
  endpoint = "10.136.106.130"
  insecure = true
  port     = 9440
}
resource "nutanix_image" "test" {
  name        = "Ubuntu-ayan"
  description = "Ubuntu"
  source_uri  = "http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso"
}


data "nutanix_image" "test" {
    image_id = "${nutanix_image.test.id}"
}

data "nutanix_image" "testname" {
    image_name = "${nutanix_image.test.name}"
}
