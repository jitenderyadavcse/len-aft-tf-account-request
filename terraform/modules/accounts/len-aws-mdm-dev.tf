module "len-aws-mdm-dev" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mdm-dev@lennar.com"
    AccountName               = "len-aws-mdm-dev"
    ManagedOrganizationalUnit = "DEV-Standalone-Apps (ou-0yph-gkiadwto)"
    SSOUserEmail              = "len-aws-mdm-dev@lennar.com"
    SSOUserFirstName          = "Master Data Management"
    SSOUserLastName           = "Development"
  }
 
  account_tags = {
    "ApplicationName" = "Master Data Management"
    "ApplicationID" = "ID024118"
    "CostCenter" = "90001408"
    "Environment" = "DEV"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "James King"
    change_reason       = "Account to support Master Data Management"
  }
 
  custom_fields = {
    app_code = "MDM"
    budget = "93"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-mdm-Dev-AWSPowerUserAccess",
      "Reader": "Len-aws-mdm-dev-AWSReadOnlyAccess"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Master Data Management",
      "ApplicationID": "ID024118",
      "ApplicationOwner": "James King",
      "CostCenter": "90001408",
      "Environment": "DEV",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "dev"
}
