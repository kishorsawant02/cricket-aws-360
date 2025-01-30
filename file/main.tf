resource "random_id" "generator" {
  prefix    = "prefix-word "
  byte_length = 7
}
resource "local_file" "pet" {
  filename = var.filename
  content  = "This is sample file ${random_id.generator.id}"
}