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
    owner_sso              = "123456789"
    owner_email            = "owner@example.com"
    owner_division         = "IT"
    owner_subdivision      = "Cloud"
    eng_exec_owner_email   = "eng@example.com"
    eng_exec_owner_sso     = "123456789"
    ops_exec_owner_email   = "ops@example.com"
    ops_exec_owner_sso     = "123456789"
    workload_environment   = "prod"
    team_dl                = "test-team@example.com"
    finance_email          = "finance@example.com"
    finance_sso            = "123456789"
    chargeback_division    = "Finance"
    chargeback_subdivision = "Billing"
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