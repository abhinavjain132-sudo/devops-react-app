terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

module "file" {
  source   = "./modules/file"
  message  = var.message
  filename = "${path.module}/hello.txt"
}

module "file_dev" {
  source   = "./modules/file"
  message  = "Hello from the Dev Module!"
  filename = "${path.module}/dev.txt"
}

moved {
  from = local_file.hello
  to   = module.file.local_file.this
}