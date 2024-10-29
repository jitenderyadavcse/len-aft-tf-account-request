module "len-aws-mlops-sandbox" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mlops-sandbox@lennar.com"
    AccountName               = "len-aws-mlops-sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-0yph-lpuxo52p)"
    SSOUserEmail              = "len-aws-mlops-sandbox@lennar.com"
    SSOUserFirstName          = "MLOps"
    SSOUserLastName           = "Sandbox"
  }
 
  account_tags = {
    "ApplicationName" = "MLOps"
    "ApplicationID" = "ID044808"
    "ApplicationOwner" = "Michael Correll"
    "CostCenter" = "90001408"
    "Environment" = "Sandbox"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Mike Correll"
    change_reason       = "Account to support MLOps Sandbox"
  }
 
  custom_fields = {
    app_code = "MLO"
    budget = "10000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-mlops-sandbox-EngineeringContributor",
      "Reader": "len-aws-mlops-sandbox-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "MLOps",
      "ApplicationID": "ID044808",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
    allowed_tags = <<EOT
    {
      "ApplicationName": "MLOps",
      "ApplicationID": "ID044808",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "sandbox"
}
