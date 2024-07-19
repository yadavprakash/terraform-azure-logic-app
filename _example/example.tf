provider "azurerm" {
  features {}
}

# Resource Group
module "resource_group" {
  source      = "git::https://github.com/yadavprakash/terraform-azure-resource-group.git?ref=v1.0.0"
  name        = "app"
  environment = "test"
  label_order = ["name", "environment", ]
  location    = "North Europe"
}

module "logic-app" {
  source = "../."

  enabled             = true
  name                = "logic-app"
  environment         = "test"
  label_order         = ["name", "environment"]
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}
