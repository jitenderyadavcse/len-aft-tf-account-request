module "len-aws-integrations-dev" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-integrations-dev@lennar.com"
    AccountName               = "len-aws-integrations-dev"
    ManagedOrganizationalUnit = "DEV-Shared-Platform (ou-0yph-ju33s43m)"
    SSOUserEmail              = "len-aws-integrations-dev@lennar.com"
    SSOUserFirstName          = "INT"
    SSOUserLastName           = "Development"
  }
 
  account_tags = {
    "ApplicationName" = "Integrations"
    "ApplicationID" = "ID022788"
    "ApplicationOwner" = "Vikram Vadavala"
    "CostCenter" = "90001406"
    "Environment" = "DEV"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Raghuraj Dasari"
    change_reason       = "Account to support Integrations Development"
  }
 
  custom_fields = {
    app_code = "INT"
    budget = "200"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-integrations-dev-EngineeringContributor",
      "Reader": "len-aws-integrations-dev-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Integrations",
      "ApplicationID": "ID022788",
      "ApplicationOwner": "Vikram Vadavala",
      "CostCenter": "90001406",
      "Environment": "DEV",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "dev"
}
