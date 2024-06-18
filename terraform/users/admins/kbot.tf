module "kbot" {
  # kbot is your automation user for all automation
  # on the platform that needs a bot account
  source = "../modules/user"

  acl_policies      = ["admin"]
  email             = "cheetiravi@gmail.com"
  first_name        = "K"
  github_username   = "ravichandrapatel"
  last_name         = "Bot"
  team_id           = data.github_team.admins.id
  initial_password  = var.initial_password
  username          = "kbot"
  user_disabled     = false
  userpass_accessor = data.vault_auth_backend.userpass.accessor
}

variable "initial_password" {
  type = string
}
