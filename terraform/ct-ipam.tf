# module "ct-ipam" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "devops-ct-ipam@bwt3.com"
#     AccountName               = "ct-ipam"
#     ManagedOrganizationalUnit = "Governance (ou-yr92-3lnpifxb)"
#     SSOUserEmail              = "devops-admin@BWT3.com"
#     SSOUserFirstName          = "devops"
#     SSOUserLastName           = "admin"
#   }

#   account_tags = {
#     name                   = "ct-ipam"
#     workload_environment   = "prod"
#   }

#   # change_management_parameters = {}

#   custom_fields = {
#     workload_environment   = "prod"
#   }

#   account_customizations_name = "ct-ipam"
# }
