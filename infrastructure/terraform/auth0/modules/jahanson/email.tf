resource "auth0_email" "mailgun_provider" {
  name    = "mailgun"
  enabled = true

  default_from_address = "hsn.dev authentication <noreply@mg.hsn.dev>"

  credentials {
    domain    = "mg.hsn.dev"
    region    = null
    smtp_port = 0
    api_key   = var.secrets["mailgun"]["api_key"]
  }
}
