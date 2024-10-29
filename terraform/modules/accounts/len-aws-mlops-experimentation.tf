module "len-aws-mlops-experimentation" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mlops-experimentation@lennar.com"
    AccountName               = "len-aws-mlops-experimentation"
    ManagedOrganizationalUnit = "DEV-Shared-Platform (ou-0yph-ju33s43m)"
    SSOUserEmail              = "len-aws-mlops-experimentation@lennar.com"
    SSOUserFirstName          = "MLOps"
    SSOUserLastName           = "Experimentation"
  }
 
  account_tags = {
    "ApplicationName" = "MLOps"
    "ApplicationID" = "ID044808"
    "ApplicationOwner" = "Michael Correll"
    "CostCenter" = "90001408"
    "Environment" = "DEV"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Mike Correll"
    change_reason       = "Account to support MLOps Experimentation"
  }
 
  custom_fields = {
    app_code = "MLO"
    budget = "10000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-mlops-experimentation-EngineeringContributor",
      "Reader": "len-aws-mlops-experimentation-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "MLOps",
      "ApplicationID": "ID044808",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "DEV",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "dev"
}
