module "len-aws-mlops-uat" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-mlops-uat@lennar.com"
    AccountName               = "len-aws-mlops-uat"
    ManagedOrganizationalUnit = "UAT-Shared-Platform (ou-0yph-y1rxqq5z)"
    SSOUserEmail              = "len-aws-mlops-uat@lennar.com"
    SSOUserFirstName          = "MLOps"
    SSOUserLastName           = "UAT"
  }
 
  account_tags = {
    "ApplicationName" = "MLOps"
    "ApplicationID" = "ID044808"
    "ApplicationOwner" = "Michael Correll"
    "CostCenter" = "90001408"
    "Environment" = "UAT"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Mike Correll"
    change_reason       = "Account to support MLOps UAT"
  }
 
  custom_fields = {
    app_code = "MLO"
    budget = "10000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-mlops-uat-AWSPowerUserAccess",
      "Reader": "len-aws-mlops-uat-AWSReadOnlyAccess"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "MLOps",
      "ApplicationID": "ID044808",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "UAT",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "uat"
}
