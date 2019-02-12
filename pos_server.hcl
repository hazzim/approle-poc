# Dev servers have version 2 of KV mounted by default, so will need these
# paths:
# path "data/onlinestore/pos/*" {
#  capabilities = ["read"]
#  allowed_parameters = {
#    "username" = []
#    "password" = []
# }
#}


path "secret/data/onlinestore/pos/*" {
  capabilities = ["read"]
}
