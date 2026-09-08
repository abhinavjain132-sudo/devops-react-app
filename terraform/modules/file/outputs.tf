output "file_path" {
  description = "Path of the generated file"
  value       = local_file.this.filename
}

output "file_content" {
  description = "Content of the generated file"
  value       = local_file.this.content
}