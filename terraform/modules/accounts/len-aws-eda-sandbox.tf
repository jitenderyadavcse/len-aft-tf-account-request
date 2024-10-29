module "len-aws-eda-sandbox" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-eda-sandbox@lennar.com"
    AccountName               = "len-aws-eda-sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-0yph-lpuxo52p)"
    SSOUserEmail              = "len-aws-eda-sandbox@lennar.com"
    SSOUserFirstName          = "Enterprise Data and Analytics"
    SSOUserLastName           = "Sandbox"
  }
 
  account_tags = {
    "ApplicationName" = "Enterprise Data and Analytics"
    "ApplicationID" = "ID046490"
    "ApplicationOwner" = "Robert Muniz"
    "CostCenter" = "90001408"
    "Environment" = "Sandbox"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Robert Muniz"
    change_reason       = "Sandbox account for IT Enterprise Data and Analytics"
  }
 
  custom_fields = {
    app_code = "EDA"
    budget = "1000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-eda-sandbox-EngineeringContributor",
      "Reader": "len-aws-eda-sandbox-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Enterprise Data and Analytics",
      "ApplicationID": "ID046490",
      "ApplicationOwner": "Robert Muniz",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
    allowed_tags = <<EOT
    {
      "ApplicationName": "Enterprise Data and Analytics",
      "ApplicationID": "ID046490",
      "ApplicationOwner": "Robert Muniz",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "sandbox"
}
