output "file_path" {
  description = "Path of the generated file"
  value       = module.file.file_path
}

output "file_content" {
  description = "Content of the generated file"
  value       = module.file.file_content
}
output "dev_file_path" {
  description = "Path of the development file"
  value       = module.file_dev.file_path
}

output "dev_file_content" {
  description = "Content of the development file"
  value       = module.file_dev.file_content
}