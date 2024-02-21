#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}


variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}


variable "managedby" {
  type        = string
  default     = ""
  description = "ManagedBy, eg 'opsstation'."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}
variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

## Common Variables

variable "enabled" {
  type        = bool
  default     = false
  description = "Flag to control the module creation."
}



variable "resource_group_name" {
  type        = string
  default     = ""
  description = "The name of the resource group in which to create the virtual network."
}

variable "location" {
  type        = string
  default     = ""
  description = "Location where resource should be created."
}



## Logic App

variable "workflow_schema" {
  type        = string
  default     = null
  description = "Specifies the Schema to use for this Logic App Workflow. Defaults to https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#."
}

variable "workflow_parameters" {
  default     = null
  type        = string
  description = "Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters)."
}
