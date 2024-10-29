module "len-aws-network-sandbox" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-network-sandbox@lennar.com"
    AccountName               = "len-aws-network-sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-0yph-lpuxo52p)"
    SSOUserEmail              = "len-aws-network-sandbox@lennar.com"
    SSOUserFirstName          = "Network"
    SSOUserLastName           = "Sandbox"
  }
 
  account_tags = {
    "ApplicationName" = "Network Services"
    "ApplicationID" = "ID022326"
    "ApplicationOwner" = "Rodolfo Tejeda"
    "CostCenter" = "90001410"
    "Environment" = "Sandbox"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Alejandro Fernandez"
    change_reason       = "Account to support Network Engineering Sandbox"
  }
 
  custom_fields = {
    app_code = "NET"
    budget = "500"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-network-sandbox-AWSNetworkAdministrator",
      "Reader": "len-aws-network-sandbox-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "Network Services",
      "ApplicationID": "ID022326",
      "ApplicationOwner": "Rodolfo Tejeda",
      "CostCenter": "90001410",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
    allowed_tags = <<EOAT
    {
      "ApplicationName": "Network Services",
      "ApplicationID": "ID022326",
      "ApplicationOwner": "Rodolfo Tejeda",
      "CostCenter": "90001410",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOAT
  }
 
  account_customizations_name = "sandbox"
}
