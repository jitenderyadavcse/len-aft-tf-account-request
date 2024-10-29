module "len-aws-ltg-people-associate-space-dev" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-ltg-people-associate-space-dev@lennar.com"
    AccountName               = "len-aws-ltg-people-associate-space-dev"
    ManagedOrganizationalUnit = "DEV-Standalone-Apps (ou-0yph-gkiadwto)"
    SSOUserEmail              = "len-aws-ltg-people-associate-space-dev@lennar.com"
    SSOUserFirstName          = "LTG People Associate Space"
    SSOUserLastName           = "DEV"
  }
 
  account_tags = {
    "ApplicationName" = "LTG People Associate Space"
    "ApplicationID" = "ID044542"
    "ApplicationOwner" = "Daniel Atheras"
    "CostCenter" = "90001404"
    "Environment" = "DEV"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Satish Kokle"
    change_reason       = "Account to support LTG People Associate Space"
  }
 
  custom_fields = {
    app_code = "PAS"
    budget = "120"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-ltg-people-associate-space-dev-EngineeringContributor",
      "Reader": "len-aws-ltg-people-associate-space-dev-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "LTG People Associate Space",
      "ApplicationID": "ID044542",
      "ApplicationOwner": "Daniel Atheras",
      "CostCenter": "90001404",
      "Environment": "DEV",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "dev"
}
