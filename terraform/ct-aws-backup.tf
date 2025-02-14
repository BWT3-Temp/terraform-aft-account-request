module "ct-aws-backup" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "devops-ct-backup@bwt3.com"
    AccountName               = "ct-aws-backup"
    ManagedOrganizationalUnit = "Governance"
    SSOUserEmail              = "devops-admin@BWT3.com"
    SSOUserFirstName          = "devops"
    SSOUserLastName           = "admin"
  }

  account_tags = {
    name                   = "ct-aws-backup"
    workload_environment   = "prod"
  }

  # change_management_parameters = {}

  custom_fields = {
    workload_environment   = "prod"
  }

  account_customizations_name = "ct-aws-backup"
}
