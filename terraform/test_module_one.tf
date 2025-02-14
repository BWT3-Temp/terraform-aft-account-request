module "test_module_one" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "test@example.com"
    AccountName               = "TestAccount"
    ManagedOrganizationalUnit = "TestOU"
    SSOUserEmail              = "devops-admin@BWT3.com"
    SSOUserFirstName          = "devops"
    SSOUserLastName           = "admin"
  }

  account_tags = {
    name                   = "TestAccount"
    group                  = "test-group"
    workload_environment   = "prod"
  }

  change_management_parameters = {
    change_requested_by = "admin@example.com"
    change_reason       = "Initial setup"
  }

  custom_fields = {
    workload_environment   = "prod"
  }

  account_customizations_name = "TestCustomizations"
}
