variable "cluster_version" {
  description = "Kubernetes <major>.<minor> version to use for the EKS cluster (i.e.: 1.21)."
  type        = string
  default     = "1.24"
}

variable "cluster_name" {
  description = "Kubernetes Cluster Name for AWS EKS Cluster"
  type        = string
  default     = "dataops"
}
variable "vpc_id" {
  description = "ID of the VPC where the cluster and its nodes will be provisioned."
  type        = string
  default     = "vpc-07bce6da0cade60db"
}

variable "aws_region" {
  description = "Default AWS Region where resources are deployed"
  type        = string
  default     = "us-west-1"
}

variable "cluster_enabled_log_types" {
  description = "EKS Cluster Log Types"
  type = list
  default = ["api","audit","authenticator","controllerManager","scheduler"]
}

variable "TFC_AWS_ACCESS_KEY_ID" {
  description = "AWS ACCESS KEY"
  type = string
  sensitive = true
}

variable "TFC_AWS_SECRET_ACCESS_KEY" {
  description = "AWS ACCESS KEY"
  type = string
  sensitive = true
}