module "len-aws-athenix-sandbox" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-athenix-sandbox@lennar.com"
    AccountName               = "len-aws-athenix-sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-0yph-lpuxo52p)"
    SSOUserEmail              = "len-aws-athenix-sandbox@lennar.com"
    SSOUserFirstName          = "Athenix 2.0"
    SSOUserLastName           = "Sandbox"
  }
 
  account_tags = {
    "ApplicationName" = "Athenix 2.0"
    "ApplicationID" = "ID044442"
    "ApplicationOwner" = "Varun Kumar"
    "CostCenter" = "90001408"
    "Environment" = "Sandbox"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Varun Kumar"
    change_reason       = "Sandbox account for Athenix 2.0"
  }
 
  custom_fields = {
    app_code = "ATX"
    budget = "1000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-athenix-sandbox-EngineeringContributor",
      "Reader": "len-aws-athenix-sandbox-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Athenix 2.0",
      "ApplicationID": "ID044442",
      "ApplicationOwner": "Varun Kumar",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
    allowed_tags = <<EOT
    {
      "ApplicationName": "Athenix 2.0",
      "ApplicationID": "ID044442",
      "ApplicationOwner": "Varun Kumar",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "sandbox"
}
