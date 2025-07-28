variable "name" {
  description = "Database name"
  type        = string
}

variable "use_aurora" {
  description = "true — creating сluster"
  type        = bool
  default     = false
}

variable "engine" {
  description = "Database type"
  type        = string
}
variable "engine_version" {
  description = "RDS version"
  type        = string
}
variable "engine_cluster" {
  description = "Aurora type"
  type        = string
}
variable "engine_version_cluster" {
  description = "Aurora verion"
  type        = string
}

variable "instance_class" {
  description = "Instance type"
  type        = string
}
variable "allocated_storage" {
  description = "Database capacity (Gb)"
  type        = number
  default     = 20
}

variable "subnet_private_ids" {
  description = "Private subnets Id-list"
  type        = list(string)
}

variable "subnet_public_ids" {
  description = "Public subnets Id-list"
  type        = list(string)
}

variable "publicly_accessible" {
  description = "true — database public"
  type        = bool
  default     = false
}

variable "multi_az" {
  description = "true — database will be in a few avaiable zones"
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "Time saving"
  type        = number
  default     = 7
}

variable "parameters" {
  description = "Additional settings map"
  type        = map(string)
  default     = {}
}

variable "aurora_replica_count" {
  description = "Reclics amount"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}

variable "vpc_id" {
  description = "Id VPC"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "username" {
  description = "Database user name"
  type        = string
}

variable "password" {
  description = "Database password"
  type        = string
  sensitive   = true
}