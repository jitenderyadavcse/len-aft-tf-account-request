module "len-aws-athenix-dev" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-athenix-dev-admin@lennar.com"
    AccountName               = "len-aws-athenix-dev"
    ManagedOrganizationalUnit = "DEV-Standalone-Apps (ou-0yph-gkiadwto)"
    SSOUserEmail              = "len-aws-athenix-dev-admin@lennar.com"
    SSOUserFirstName          = "Athenix"
    SSOUserLastName           = "Development"
  }
 
  account_tags = {
    "ApplicationName" = "Athenix-Dev"
    "ApplicationID" = "Athenix Tier1"
    "CostCenter" = "90001408"
    "Environment" = "DEV"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Varun Kumar"
    change_reason       = "Account to support the Athenix"
  }
 
  custom_fields = {
    app_code = "Athenix Tier1"
    budget = "32000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "LEN-AWS-Athenix-Dev-EngineeringContributor",
      "Reader": "LEN-AWS-Athenix-Dev-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Athenix-Dev",
      "ApplicationID": "Athenix Tier1",
      "ApplicationOwner": "Varun Kumar",
      "CostCenter": "90001408",
      "Environment": "DEV",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "dev"
}
