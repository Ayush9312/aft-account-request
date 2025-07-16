module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail             = "ksk@gmail.com"
    AccountName              = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail             = "ksk@gmail.com"
    SSOUserFirstName         = "Sandbox"
    SSOUserLastName          = "AFT"
  }

  providers = {
    aws.ct_management   = aws.ct_management
    aws.log_archive     = aws.log_archive
    aws.audit           = aws.audit
    aws.aft_management  = aws.aft_management
  }

  account_tags = {
    "AFT-Accounts" = "sandbox"
  }

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
