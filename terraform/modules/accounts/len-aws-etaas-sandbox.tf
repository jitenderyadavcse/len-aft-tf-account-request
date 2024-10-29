module "len-aws-etaas-sandbox" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-etaas-sandbox-admin@lennar.com"
    AccountName               = "len-aws-etaas-sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-0yph-lpuxo52p)"
    SSOUserEmail              = "len-aws-etaas-sandbox-admin@lennar.com"
    SSOUserFirstName          = "ETAAS"
    SSOUserLastName           = "Sandbox"
  }
 
  account_tags = {
    "ApplicationName" = "ETAAS Sandbox"
    "ApplicationID" = "ID042877"
    "ApplicationOwner" = "Mike Correll"
    "CostCenter" = "90001408"
    "Environment" = "Sandbox"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Mike Correll"
    change_reason       = "Account to support ETAAS Sandbox"
  }
 
  custom_fields = {
    app_code = "ETA"
    budget = "5000"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "LEN-AWS-ETAAS-Sandbox-EngineeringContributor",
      "Reader": "LEN-AWS-ETAAS-Sandbox-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "ETAAS Sandbox",
      "ApplicationID": "ID042877",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
    allowed_tags = <<EOAT
    {
      "ApplicationName": "ETAAS Sandbox",
      "ApplicationID": "ID042877",
      "ApplicationOwner": "Mike Correll",
      "CostCenter": "90001408",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOAT
  }
 
  account_customizations_name = "sandbox"
}
