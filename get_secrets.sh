curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    "${VAULT_ADDR}/v1/secret/data/onlinestore/pos/username" | jq

curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    "${VAULT_ADDR}/v1/secret/data/onlinestore/pos/password" | jq
