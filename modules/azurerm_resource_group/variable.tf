variable "child_rg" {
  description = "A map of configurations for creating multiple Azure resource groups."
  type = map(object({
    name     = string   # Name of the resource group
    location = string   # Location of the resource group
    tags      = map(string)  # Tags for the resource group (key-value pairs)
  }))
}
