output "pet-name" {
  value       = module.file.pet-name
  description = "file created"
}
output "az" {
  value = data.aws_availability_zones.available
}
