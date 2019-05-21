
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.28.0"
}

terraform {
  backend "azurerm" {
    storage_account_name = "myterraformblob7"
    container_name       = "myblobcntanr3"
    key                  = "prod.terraform.tfstate"
    access_key           = "IV/ptmNAjmfMvWtlQhU64oEjI23GhyA9FXjxs50tSfarFAf+rBPgh5uOovWoX7nYAZFfNEdUq+q0VMa40bLdjw=="
  }
}