module "len-aws-lennarfit-avatar-dev" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-lennarfit-avatar-dev-admin@lennar.com"
    AccountName               = "len-aws-lennarfit-avatar-dev"
    ManagedOrganizationalUnit = "DEV-Standalone-Apps (ou-0yph-gkiadwto)"
    SSOUserEmail              = "len-aws-lennarfit-avatar-dev-admin@lennar.com"
    SSOUserFirstName          = "LennarFit - Avatar"
    SSOUserLastName           = "DEV"
  }
 
  account_tags = {
    "ApplicationName" = "LennarFit - Avatar"
    "ApplicationID" = "ID043656"
    "ApplicationOwner" = "Mike Correll"
    "CostCenter" = "90001408"
    "Environment" = "DEV"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Mike Correll"
    change_reason       = "Account to support LennarFit - Avatar"
  }
 
  custom_fields = {
    app_code = "LFA"
    budget = "5000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "LEN-AWS-LennarFit-Avatar-DEV-EngineeringContributor",
      "Reader": "LEN-AWS-LennarFit-Avatar-DEV-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "LennarFit - Avatar",
      "ApplicationID": "ID043656",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "DEV",
      "AutoUpdate": "Yes"
    }
    EOT
  }
 
  account_customizations_name = "dev"
}
