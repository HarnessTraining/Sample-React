terraform {
  required_version = ">= 1.3.0"

  required_providers {
    harness = {
      source  = "harness/harness"
      version = "0.37.3"
    }
  }

  backend "http" {
    address         = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/default_project/workspaces/Terraform_WorkSpace/terraform-backend?accountIdentifier=0C77MbzHRMCVpitKlhm4uw"
    lock_address    = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/default_project/workspaces/Terraform_WorkSpace/terraform-backend/lock?accountIdentifier=0C77MbzHRMCVpitKlhm4uw"
    lock_method     = "POST"
    unlock_address  = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/default_project/workspaces/Terraform_WorkSpace/terraform-backend/lock?accountIdentifier=0C77MbzHRMCVpitKlhm4uw"
    unlock_method   = "DELETE"
    username        = "harness"
    # password is provided via TF_HTTP_PASSWORD env variable
  }
}
