variable "config_passphrase" {
  description = "Config passphrase."
  type        = string

  validation {
    condition     = can(regex("^.{0,32}$", var.config_passphrase))
    error_message = "Maximum characters: 32."
  }
}
