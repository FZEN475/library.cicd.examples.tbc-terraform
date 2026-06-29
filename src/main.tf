terraform {
  required_version = ">= 1.10.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }

}

resource "random_id" "server" {
  byte_length = 8
}

resource "local_file" "review_summary" {
  # Добавляем секретный токен в строку содержимого:
  content  = "Env: ${var.environment_name}, ID: ${random_id.server.hex}, Token: ${var.api_secret_token}"
  filename = "${path.module}/reports/review-summary.txt"
}
