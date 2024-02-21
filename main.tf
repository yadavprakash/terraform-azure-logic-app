#Module      : labels
#Description : Terraform module to create consistent naming for multiple names.
module "labels" {
  source      = "git::https://github.com/opsstation/terraform-azure-labels.git?ref=v1.0.0"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  repository  = var.repository
}

resource "azurerm_logic_app_workflow" "main" {
  enabled             = var.enabled
  name                = "${var.name}-logic-app"
  location            = var.location
  resource_group_name = var.resource_group_name
  workflow_schema     = var.workflow_schema
  workflow_parameters = var.workflow_parameters
  parameters          = var.parameters
}