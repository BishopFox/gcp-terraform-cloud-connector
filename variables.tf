variable "projectID" {
  description = "This is the project ID of the project containing Workload Identity Federation"
  type        = string
}

variable "projectNumber" {
  description = "This is the project number of the project containing Workload Identity Federation"
  type        = string
}

variable "displayName" {
  description = "This is the display name of the Workload Identity Federation pool"
  type        = string
  default     = "bishopfoxidentitypool"
}

variable "poolID" {
  description = "This is the ID of the Workload Identity Federation identity pool"
  type        = string
  default     = "bfidentitypool"
}

variable "providerID" {
  description = "This is the ID of the Workload Identity Federation identity pool's AWS provider"
  type        = string
  default     = "bfawsprovider"
}

variable "AWS_accountID" {
  description = "This is the ID of the AWS account for the Workload Identity Federation identity pool's AWS provider"
  type        = string
  default     = "648456035940"
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

