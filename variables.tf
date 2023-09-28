variable "projectID" {
  description = "This is the project ID of the project containing Workload Identity Federation"
  type        = string
}

variable "projectNumber" {
  description = "This is the project number of the project containing Workload Identity Federation"
  type        = string
}

variable "poolID" {
  description = "This is the ID of the Workload Identity Federation identity pool"
  type        = string
  default     = "bfidentitypool"
}

variable "displayName" {
  description = "This is the display name of the Workload Identity Federation pool"
  type        = string
  default     = "bishopfoxidentitypool"
}

variable "providerID" {
  description = "This is the ID of the Workload Identity Federation identity pool AWS provider"
  type        = string
  default     = "bfawsprovider"
}

variable "AWS_accountID" {
  description = "This is the ID of the Bishop Fox AWS account for the Workload Identity Federation identity pool AWS provider"
  type        = string
}

variable "AWS_iamRole1" {
  description = "This is the Bishop Fox IAM role for the Workload Identity Federation identity pool AWS provider"
  type        = string
}

variable "AWS_iamRole2" {
  description = "This is the Bishop Fox IAM role for the Workload Identity Federation identity pool AWS provider"
  type        = string
}

variable "serviceAccountID" {
  description = "This is the ID of the service account connected to the Workload Identity Federation identity pool"
  type        = string
  default     = "bfserviceaccount"
}

variable "serviceAccountDisplayName" {
  description = "This is the display name of the Workload Identity Federation pool"
  type        = string
  default     = "BF_Service_Account"
}

