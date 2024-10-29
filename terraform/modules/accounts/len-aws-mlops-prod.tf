module "len-aws-mlops-prod" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mlops-prod@lennar.com"
    AccountName               = "len-aws-mlops-prod"
    ManagedOrganizationalUnit = "PRD-Shared-Platform (ou-0yph-g971v9ma)"
    SSOUserEmail              = "len-aws-mlops-prod@lennar.com"
    SSOUserFirstName          = "MLOps"
    SSOUserLastName           = "PRD"
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
    change_reason       = "Account to support MLOps Prod"
  }
 
  custom_fields = {
    app_code = "MLO"
    budget = "10000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-mlops-prod-AWSPowerUserAccess",
      "Reader": "len-aws-mlops-prod-AWSReadOnlyAccess"
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
 
  account_customizations_name = "prod"
}
