# database
variable "db_root_username" {
  type        = string
  description = "The root username for the database instance"
}

variable "network_id" {
  description = "The id of the vpc"
  type        = string
}

variable "instance_name" {
  description = "The name of the database instance"
  type        = string
}

variable "database_version" {
  description = "The MySQL, PostgreSQL or SQL Server version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD, SQLSERVER_2019_ENTERPRISE, SQLSERVER_2019_EXPRESS, SQLSERVER_2019_WEB"
  type        = string
  default     = "SQLSERVER_2017_STANDARD"
}

variable "region" {
  description = "The region the instance will sit in"
  type        = string
  default     = "asia-south1"
}

variable "deletion_protection" {
  description = "Whether or not to allow Terraform to destroy the instance"
  type        = bool
  default     = false
}

variable "tier" {
  description = "The machine type to use"
  type        = string
}

variable "availability_type" {
  description = "The availability type of the Cloud SQL instance, high availability (REGIONAL) or single zone (ZONAL)"
  type        = string
  default     = "ZONAL"
}

variable "disk_size" {
  description = "The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased"
  type        = string
}

variable "disk_autoresize" {
  description = "Configuration to increase storage size automatically"
  type        = bool
  default     = true
}

variable "backup_enabled" {
  description = "True if backup configuration is enabled"
  type        = bool
  default     = true
}

variable "binary_log_enabled" {
  description = "True if backup configuration is enabled"
  type        = bool
  default     = false
}

variable "ipv4_enabled" {
  description = "True if backup configuration is enabled"
  type        = bool
  default     = false
}

variable "backup_start_time" {
  description = "HH:MM format time indicating when backup configuration starts"
  type        = string
  default     = "00:00"
}

variable "shared_vpc_project_id" {
  description = "Shared VPC project"
  type        = string
}

variable "project_id" {
  description = "The project where the database lives"
  type        = string
}

variable "private_ip_address_name" {
  description = "The name of the static private ip for the database"
  type        = string
  default     = "test"
}