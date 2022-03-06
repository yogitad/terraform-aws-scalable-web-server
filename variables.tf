# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "ami-image-id" {
  description = "The ami image id" 
  type        = string
  default     = "ami-0672b175139a0f8f4"  # Ubuntu image id in ap-southeast2 region
  validation {
    condition = (
      length(var.ami-image-id) > 4 &&
      substr(var.ami-image-id, 0, 4) == "ami-"
    )
    error_message = "The ami_id value must start with \"ami-\"."
  }
}

variable "region" {
  description = "The AWS region" 
  type        = string
  default     = "ap-southeast-2"
}

