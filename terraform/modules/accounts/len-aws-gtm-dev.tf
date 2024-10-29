module "len-aws-gtm-dev" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-gtm-dev-admin@lennar.com"
    AccountName               = "len-aws-gtm-dev"
    ManagedOrganizationalUnit = "DEV-Standalone-Apps (ou-0yph-gkiadwto)"
    SSOUserEmail              = "len-aws-gtm-dev-admin@lennar.com"
    SSOUserFirstName          = "GTM Sandbox"
    SSOUserLastName           = "Development"
  }
 
  account_tags = {
    "ApplicationName" = "GTM Sandbox"
    "ApplicationID" = "ID043834"
    "ApplicationOwner" = "Cesar Hernandez"
    "CostCenter" = "90001408P2 - Data Info BI Analytics"
    "Environment" = "DEV"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Cesar Hernandez"
    change_reason       = "Account to support GTM Sandbox"
  }
 
  custom_fields = {
    app_code = "GTM"
    budget = "10000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-gtm-dev-EngineeringContributor",
      "Reader": "len-aws-gtm-dev-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "GTM Sandbox",
      "ApplicationID": "ID043834",
      "ApplicationOwner": "Cesar Hernandez",
      "CostCenter": "90001408P2 - Data Info BI Analytics",
      "Environment": "DEV",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "dev"
}
