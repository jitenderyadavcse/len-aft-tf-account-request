module "len-aws-athenix-qa" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-athenix-qa-admin@lennar.com"
    AccountName               = "len-aws-athenix-qa"
    ManagedOrganizationalUnit = "QA-Standalone-Apps (ou-0yph-47wx8ezb)"
    SSOUserEmail              = "len-aws-athenix-qa-admin@lennar.com"
    SSOUserFirstName          = "Athenix"
    SSOUserLastName           = "QA"
  }
 
  account_tags = {
    "ApplicationName" = "Athenix"
    "ApplicationID" = "ID036213"
    "CostCenter" = "90001408"
    "Environment" = "QA"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Nilesh Patel"
    change_reason       = "Athenix QA environment in AWS"
  }
 
  custom_fields = {
    app_code = "ATX"
    budget = "73000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "LEN-AWS-Athenix-QA-EngineeringContributor",
      "Reader": "LEN-AWS-Athenix-QA-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Athenix",
      "ApplicationID": "ID036213",
      "ApplicationOwner": "Abram Bachtiar",
      "CostCenter": "90001408",
      "Environment": "QA",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "qa"
}
