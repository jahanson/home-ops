terraform {
  cloud {
    organization = "hsndev"
    workspaces {
      name = "home-auth0-provisioner"
    }
  }

  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "0.50.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
  }
}

module "onepassword_item_auth0" {
  source = "github.com/bjw-s/terraform-1password-item?ref=main"
  vault  = "hsn.dev"
  item   = "auth0"
}

module "onepassword_item_mailgun" {
  source = "github.com/bjw-s/terraform-1password-item?ref=main"
  vault  = "hsn.dev"
  item   = "mailgun"
}

module "jahanson" {
  source = "./modules/jahanson"

  secrets = {
    auth0_domain        = module.onepassword_item_auth0.fields.hsn_domain
    auth0_client_id     = module.onepassword_item_auth0.fields.terraform_client_id
    auth0_client_secret = module.onepassword_item_auth0.fields.terraform_client_secret
    users = {
      jahanson = {
        email    = module.onepassword_item_auth0.fields.user_jahanson_email
        password = module.onepassword_item_auth0.fields.user_jahanson_password
      }
    }
    mailgun = {
      api_key = module.onepassword_item_mailgun.fields.auth0_smtp_password
    }
  }
}
