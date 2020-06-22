variable "name" {
  description = "The Name of the Resource Group to create or search."
  type        = string
  default     = ""
}

variable "location" {
  description = "The Azure Region where the Resource Group exists."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  default     = {}
}
