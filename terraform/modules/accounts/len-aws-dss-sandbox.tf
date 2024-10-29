module "len-aws-dss-sandbox" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-dss-sandbox@lennar.com"
    AccountName               = "len-aws-dss-sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-0yph-lpuxo52p)"
    SSOUserEmail              = "len-aws-dss-sandbox@lennar.com"
    SSOUserFirstName          = "DSS"
    SSOUserLastName           = "Sandbox"
  }
 
  account_tags = {
    "ApplicationName" = "DSS Infrastructure"
    "ApplicationID" = "ID039136"
    "ApplicationOwner" = "Eddie Guerra"
    "CostCenter" = "90001410"
    "Environment" = "Sandbox"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Julio Mendez"
    change_reason       = "Account to test services in DSS Sandbox"
  }
 
  custom_fields = {
    app_code = "DSS"
    budget = "500"
    budget_alert_email = "julio.mendez@lennar.com,ricardo.sabates@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-dss-sandbox-EngineeringContributor",
      "Reader": "len-aws-dss-sandbox-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "DSS Infrastructure",
      "ApplicationID": "ID039136",
      "ApplicationOwner": "Eddie Guerra",
      "CostCenter": "90001410",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
    allowed_tags = <<EOAT
    {
      "ApplicationName": "DSS Infrastructure",
      "ApplicationID": "ID039136",
      "ApplicationOwner": "Eddie Guerra",
      "CostCenter": "90001410,99999997",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOAT
      r53_lennarTwo = "false"
  }
 
  account_customizations_name = "sandbox"
}
