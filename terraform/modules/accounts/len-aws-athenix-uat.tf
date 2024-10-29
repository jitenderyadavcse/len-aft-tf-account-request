module "len-aws-athenix-uat" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-athenix-uat-admin@lennar.com"
    AccountName               = "len-aws-athenix-uat"
    ManagedOrganizationalUnit = "UAT-Standalone-Apps (ou-0yph-zzvp2pn8)"
    SSOUserEmail              = "len-aws-athenix-uat-admin@lennar.com"
    SSOUserFirstName          = "Athenix"
    SSOUserLastName           = "UAT"
  }
 
  account_tags = {
    "ApplicationName" = "Athenix"
    "ApplicationID" = "ID036213"
    "CostCenter" = "90001408"
    "Environment" = "UAT"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Nilesh Patel"
    change_reason       = "Athenix UAT environment in AWS"
  }
 
  custom_fields = {
    app_code = "ATX"
    budget = "50000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "LEN-AWS-Athenix-UAT-EngineeringContributor",
      "Reader": "LEN-AWS-Athenix-UAT-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Athenix",
      "ApplicationID": "ID036213",
      "ApplicationOwner": "Abram Bachtiar",
      "CostCenter": "90001408",
      "Environment": "UAT",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "uat"
}
