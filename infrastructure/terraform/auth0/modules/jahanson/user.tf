resource "auth0_user" "jahanson" {
  connection_name = auth0_connection.username_password_authentication.name

  name     = var.secrets["users"]["jahanson"]["email"]
  nickname = "jahanson"
  email    = var.secrets["users"]["jahanson"]["email"]
  password = var.secrets["users"]["jahanson"]["password"]

  roles = [
    auth0_role.admins.id,
    auth0_role.k8s_admin.id,
    auth0_role.grafana_admin.id,
    auth0_role.calibre_web.id,
    auth0_role.paperless.id,
    auth0_role.miniflux.id,
  ]

  blocked        = false
  email_verified = true
}