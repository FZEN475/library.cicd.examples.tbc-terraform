variable "api_secret_token" {
  type        = string
  description = "Secret token passed from environment variables"
  sensitive   = true
}

variable "environment_name" {
  type        = string
  description = "The name of the current review environment"
}

