# Variables for providing to module fixture codes

### aws credential
variable "aws_account_id" {
  description = "The aws account id for the tf backend creation (e.g. 857026751867)"
}

### network
variable "aws_region" {
  description = "The aws region to deploy"
  type        = string
  default     = "us-east-1"
}

variable "azs" {
  description = "A list of availability zones for the vpc to deploy resources"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "subnets" {
  description = "The list of subnets to deploy an eks cluster"
  type        = list(string)
  default     = null
}

### kubernetes cluster
variable "kubernetes_version" {
  description = "The target version of kubernetes"
  type        = string
  default     = "1.17"
}

variable "node_groups" {
  description = "Node groups definition"
  type        = map
  default     = null
}

variable "managed_node_groups" {
  description = "Amazon managed node groups definition"
  type        = map
  default     = null
}

variable "fargate_profiles" {
  description = "Amazon Fargate for EKS profiles"
  type        = map
  default     = null
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = "eks"
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}