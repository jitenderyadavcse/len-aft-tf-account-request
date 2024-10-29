module "len-aws-mdm-qa" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mdm-qa@lennar.com"
    AccountName               = "len-aws-mdm-qa"
    ManagedOrganizationalUnit = "QA-Standalone-Apps (ou-0yph-47wx8ezb)"
    SSOUserEmail              = "len-aws-mdm-qa@lennar.com"
    SSOUserFirstName          = "Master Data Management"
    SSOUserLastName           = "QA"
  }
 
  account_tags = {
    "ApplicationName" = "Master Data Management"
    "ApplicationID" = "ID045805"
    "CostCenter" = "90001408"
    "Environment" = "QA"
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
      "EngineeringContributor": "LEN-AWS-mdm-QA-EngineeringContributor",
      "Reader": "LEN-AWS-mdm-QA-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Master Data Management",
      "ApplicationID": "ID045805",
      "ApplicationOwner": "James King",
      "CostCenter": "90001408",
      "Environment": "QA",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "qa"
}
