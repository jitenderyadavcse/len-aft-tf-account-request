module "len-aws-mdm-prod" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mdm-prod@lennar.com"
    AccountName               = "len-aws-mdm-prod"
    ManagedOrganizationalUnit = "PRD-Standalone-Apps (ou-0yph-8o304n0r)"
    SSOUserEmail              = "len-aws-mdm-prod@lennar.com"
    SSOUserFirstName          = "Master Data Management"
    SSOUserLastName           = "PRD"
  }
 
  account_tags = {
    "ApplicationName" = "Master Data Management"
    "ApplicationID" = "ID045805"
    "CostCenter" = "90001408"
    "Environment" = "PRD"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "James King"
    change_reason       = "Account to support Master Data Management"
  }
 
  custom_fields = {
    app_code = "MDM"
    budget = "1000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-mdm-prod-EngineeringContributor",
      "Reader": "len-aws-mdm-prod-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Master Data Management",
      "ApplicationID": "ID045805",
      "ApplicationOwner": "James King",
      "CostCenter": "90001408",
      "Environment": "PRD",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "prod"
}