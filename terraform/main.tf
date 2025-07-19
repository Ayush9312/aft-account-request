module "workload" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail             = "ksk@gmail.com"
    AccountName              = "workload-aft"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail             = "ksk@gmail.com"
    SSOUserFirstName         = "workload"
    SSOUserLastName          = "AFT"
  }

  account_tags = {
    "AFT-Accounts" = "workload"
  }

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "workload"
}


module "workloadaccount" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail             = "rk45joshi@gmail.com"
    AccountName              = "workload-aft-account"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail             = "rk45joshi@gmail.com"
    SSOUserFirstName         = "workload-account"
    SSOUserLastName          = "AFT-account"
  }

  account_tags = {
    "AFT-Accounts" = "workload"
  }

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "workloadaccount"
}
