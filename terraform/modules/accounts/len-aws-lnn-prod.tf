module "len-aws-lnn-prod" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-lnn-prod@lennar.com"
    AccountName               = "len-aws-lnn-prod"
    ManagedOrganizationalUnit = "PRD-Standalone-Apps (ou-0yph-8o304n0r)"
    SSOUserEmail              = "len-aws-lnn-prod@lennar.com"
    SSOUserFirstName          = "LNN"
    SSOUserLastName           = "PRD"
  }
 
  account_tags = {
    "ApplicationName" = "Lennar News Network"
    "ApplicationID" = "ID022904"
    "ApplicationOwner" = "Javier Bermudo"
    "CostCenter" = "90003201"
    "Environment" = "PRD"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Javier Bermudo"
    change_reason       = "LNN PRD environment in AWS"
  }
 
  custom_fields = {
    app_code = "LNN"
    budget = "100"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-lnn-prod-EngineeringContributor",
      "Reader": "len-aws-lnn-prod-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Lennar News Network",
      "ApplicationID": "ID022904",
      "ApplicationOwner": "Javier Bermudo",
      "CostCenter": "90003201",
      "Environment": "PRD",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "prod"
}