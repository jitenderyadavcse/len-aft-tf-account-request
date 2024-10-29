module "len-aws-devops-sandbox" {
  source = "../aft-account-request"
 
  control_tower_parameters = {
    AccountEmail              = "len-aws-devops-sandbox@lennar.com"
    AccountName               = "len-aws-devops-sandbox"
    ManagedOrganizationalUnit = "Sandbox (ou-0yph-lpuxo52p)"
    SSOUserEmail              = "len-aws-devops-sandbox@lennar.com"
    SSOUserFirstName          = "DevOps"
    SSOUserLastName           = "Sandbox"
  }
 
  account_tags = {
    "ApplicationName" = "DevOps Shared Services"
    "ApplicationID" = "ID044662"
    "ApplicationOwner" = "Amado Sierra"
    "CostCenter" = "90001406"
    "Environment" = "Sandbox"
    "AutoUpdate" = "Yes"
  }
 
  change_management_parameters = {
    change_requested_by = "Daniel Rahamim"
    change_reason       = "New DevOps Sandbox Account"
  }
 
  custom_fields = {
    app_code = "DOS"
    budget = "612"
    budget_alert_email = "cloudyn.admin@lennar.com"
    role_mappings = <<EOR
    {
      "EngineeringContributor": "len-aws-devops-sandbox-EngineeringContributor",
      "Reader": "len-aws-devops-sandbox-ReadOnly"
    }
    EOR
    mandatory_tags = <<EOT
    {
      "ApplicationName": "DevOps Shared Services",
      "ApplicationID": "ID044662",
      "ApplicationOwner": "Amado Sierra",
      "CostCenter": "90001406",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOT
    allowed_tags = <<EOAT
    {
      "ApplicationName": "DevOps Shared Services",
      "ApplicationID": "ID044662",
      "ApplicationOwner": "Amado Sierra",
      "CostCenter": "90001406",
      "Environment": "Sandbox",
      "AutoUpdate": "Yes"
    }
    EOAT
  }
 
  account_customizations_name = "sandbox"
}
