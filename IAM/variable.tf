variable "name" {
  description = "Name of the IAM user"
  type        = string
}

variable "create_access_key" {
  description = "Whether to create an access key for the user"
  type        = bool
  default     = false
}

variable "password_length" {
  description = "Length of the user password"
  type        = number
  default     = 12
}

variable "password_reset_required" {
  description = "Whether the user is required to reset their password on next login"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Whether to force destroy the user"
  type        = bool
  default     = false
}
