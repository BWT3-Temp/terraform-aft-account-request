module "ct-root-mgmt" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "devops-ct-rootmgmt@bwt3.com"
    AccountName               = "ct-root-mgmt"
    ManagedOrganizationalUnit = "Governance"
    SSOUserEmail              = "devops-admin@BWT3.com"
    SSOUserFirstName          = "devops"
    SSOUserLastName           = "admin"
  }

  account_tags = {
    name                   = "ct-root-mgmt"
    workload_environment   = "prod"
  }

  change_management_parameters = {}

  custom_fields = {
    workload_environment   = "prod"
  }

  account_customizations_name = "ct-root-mgmt"
}
