# AWS Control Tower Account Factory for Terraform - Account Request Module

This repository contains boilerplate configuration for defining account
requests to use with the Account Factory for Terraform module. The AFT pipeline
requires the structure used and the included submodule to define a DynamoDB
table item with your account specifications. 

## Steps to add a new aws account
- Create a .tf file under ** terraform/modules/accounts/len-acc-{APP_CODE}-{ENV}.tf**
- Copy the content of existing file & make the changes as required for the new account.
- Commit the changes to trigger the pipeline
- Wait about 15-20 min for the email notification shown as below & activate the account
 <img width="421" alt="image" src="https://github.com/jitenderyadavofc/learn-terraform-aft-account-request/assets/157213132/8e696615-7105-44d5-b768-5031698a7667">

 
  
 

