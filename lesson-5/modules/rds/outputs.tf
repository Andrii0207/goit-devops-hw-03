output "endpoint" {
  description = "DNS-adress for database"
  value       = var.use_aurora ? aws_rds_cluster.this[0].endpoint : aws_db_instance.this[0].address
}

output "writer_endpoint" {
  description = "Request DNS-address"
  value       = var.use_aurora ? aws_rds_cluster_instance.writer[0].endpoint : ""
}

output "reader_endpoints" {
  description = "List of DNS-address to read"
  value       = var.use_aurora ? aws_rds_cluster_instance.readers[*].endpoint : []
}