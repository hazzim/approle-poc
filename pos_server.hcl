# Dev servers have version 2 of KV mounted by default, so will need these
# paths:
path "onlinestore/pos/*" {
  capabilities = ["read"]
  allowed_parameters = {
    "username" = []
    "password" = []
 }
}
