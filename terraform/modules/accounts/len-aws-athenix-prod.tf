module "len-aws-athenix-prod" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-athenix-prod@lennar.com"
    AccountName               = "len-aws-athenix-prod"
    ManagedOrganizationalUnit = "PRD-Standalone-Apps (ou-0yph-8o304n0r)"
    SSOUserEmail              = "len-aws-athenix-prod@lennar.com"
    SSOUserFirstName          = "Athenix"
    SSOUserLastName           = "PRD"
  }
 
  account_tags = {
    "ApplicationName" = "Athenix"
    "ApplicationID" = "ID036213"
    "CostCenter" = "90001408"
    "Environment" = "PRD"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Nilesh Patel"
    change_reason       = "Athenix PRD environment in AWS"
  }
 
  custom_fields = {
    app_code = "ATX"
    budget = "82000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "LEN-AWS-Athenix-Prod-EngineeringContributor",
      "Reader": "LEN-AWS-Athenix-Prod-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Athenix",
      "ApplicationID": "ID036213",
      "ApplicationOwner": "Abram Bachtiar",
      "CostCenter": "90001408",
      "Environment": "PRD",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "prod"
}
