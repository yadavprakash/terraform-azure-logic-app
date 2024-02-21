output "id" {
  value       = join("", azurerm_logic_app_workflow.main[*].id)
  description = "The Logic App Workflow ID."
}

output "access_endpoint" {
  value       = join("", azurerm_logic_app_workflow.main[*].access_endpoint)
  description = "The Access Endpoint for the Logic App Workflow."
}

# output "endpoint_url" {
#   value       = azurerm_template_deployment.workflow.outputs["endpointUrl"]
#   description = "The Access Endpoint for the Logic App Workflow."
# }