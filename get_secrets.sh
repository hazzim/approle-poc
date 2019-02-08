curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    "${VAULT_ADDR}/v1/secret/onlinestore/pos/username" | jq

curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    "${VAULT_ADDR}/v1/secret/onlinestore/pos/password" | jq
