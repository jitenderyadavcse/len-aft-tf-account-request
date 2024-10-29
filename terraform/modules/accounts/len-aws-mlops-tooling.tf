module "len-aws-mlops-tooling" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mlops-tooling@lennar.com"
    AccountName               = "len-aws-mlops-tooling"
    ManagedOrganizationalUnit = "PRD-Shared-Platform (ou-0yph-g971v9ma)"
    SSOUserEmail              = "len-aws-mlops-tooling@lennar.com"
    SSOUserFirstName          = "MLOps"
    SSOUserLastName           = "Tooling"
  }
 
  account_tags = {
    "ApplicationName" = "MLOps"
    "ApplicationID" = "ID044808"
    "ApplicationOwner" = "Michael Correll"
    "CostCenter" = "90001408"
    "Environment" = "PRD"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Mike Correll"
    change_reason       = "Account to support MLOps Tooling"
  }
 
  custom_fields = {
    app_code = "MLO"
    budget = "10000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-mlops-tooling-EngineeringContributor",
      "Reader": "len-aws-mlops-tooling-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "MLOps",
      "ApplicationID": "ID044808",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "PRD",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "shared"
}
