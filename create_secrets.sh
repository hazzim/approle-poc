curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data @payload1.json \
    "${VAULT_ADDR}/v1/secret/onlinestore/pos/username"

curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data @payload2.json \
    "${VAULT_ADDR}/v1/secret/onlinestore/pos/password"
