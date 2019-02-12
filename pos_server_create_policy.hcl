# Dev servers have version 2 of KV mounted by default, so will need these
# paths:
path "secret/*" 
{
  capabilities = ["create"]
}

path "onlinestore/pos/username" {
  capabilities = ["create"]
}

path "onlinestore/pos/password" {
  capabilities = ["create"]
}
