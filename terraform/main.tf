# SPDX-License-Identifier: Apache-2.0
#
module "workload_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "rk45joshi@gmail.com"
    AccountName  = "workload-rk"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "workload"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "rk45joshi@gmail.com"
    SSOUserFirstName = "rk"
    SSOUserLastName  = "joshi"
  }

  account_tags = {
    "ABC:Owner"       = "rk45joshi@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "rk joshi"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "workload-customizations"
}


#module "workloadaccount" {
#  source = "./modules/aft-account-request"
#
#  control_tower_parameters = {
#    AccountEmail             = "rk45joshi@gmail.com"
#    AccountName              = "workload-aft-account"
#    ManagedOrganizationalUnit = "workload"
#    SSOUserEmail             = "rk45joshi@gmail.com"
#    SSOUserFirstName         = "workload-account"
#    SSOUserLastName          = "AFT-account"
#  }
#
#  account_tags = {
#    "AFT-Accounts" = "workload"
#  }
#
#  change_management_parameters = {
#    change_requested_by = "AFT"
#    change_reason       = "AWS Control Tower Account Factory for Terraform"
#  }
#
#  custom_fields = {
#    group = "non-prod"
#  }
#
#  account_customizations_name = "workloadaccount"
#}


### adding accounts one by one for customization ###
