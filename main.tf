terraform {
  required_version = ">= 1.5.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

variable "environment" {
  type    = string
  default = "development"
}

resource "random_pet" "server" {
  length    = 2
  separator = "-"
  prefix    = var.environment
}

output "server_name" {
  value = random_pet.server.id
}